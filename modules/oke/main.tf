#####################################################
# Get Availability Domains
#####################################################

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

#####################################################
# OKE Cluster
#####################################################

resource "oci_containerengine_cluster" "oke_cluster" {

  compartment_id     = var.compartment_id

  name               = var.cluster_name

  vcn_id             = var.vcn_id

  kubernetes_version = var.kubernetes_version

  type               = "ENHANCED_CLUSTER"

  endpoint_config {

    is_public_ip_enabled = false

    subnet_id = var.control_plane_subnet_id

  }

  options {

    add_ons {

      is_kubernetes_dashboard_enabled = false

      is_tiller_enabled = false

    }

    admission_controller_options {

      is_pod_security_policy_enabled = false

    }

  }

  cluster_pod_network_options {

    cni_type = "OCI_VCN_IP_NATIVE"

  }

}

#####################################################
# OKE Node Image
#####################################################

data "oci_containerengine_node_pool_option" "oke_options" {

  node_pool_option_id = "all"

  compartment_id = var.compartment_id

}

############################################################
# OKE Node Pool
############################################################

resource "oci_containerengine_node_pool" "node_pool" {

  compartment_id = var.compartment_id

  cluster_id = oci_containerengine_cluster.oke_cluster.id

  name = "${var.cluster_name}-nodepool"

  kubernetes_version = var.kubernetes_version

  node_shape = var.node_shape

  

  node_shape_config {

    ocpus = var.node_ocpus

    memory_in_gbs = var.node_memory_gbs

  }

  node_source_details {

    source_type = "IMAGE"

    image_id = lookup(
      data.oci_containerengine_node_pool_option.oke_options.sources[0],
      "image_id",
      null
    )

    boot_volume_size_in_gbs = 100
  }

  node_config_details {

    size = var.node_pool_size

    placement_configs {

      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name

      subnet_id = var.worker_subnet_id

    }

    node_pool_pod_network_option_details {

      cni_type = "OCI_VCN_IP_NATIVE"

      pod_subnet_ids = [var.pod_subnet_id]

      max_pods_per_node = 20

    }

    is_pv_encryption_in_transit_enabled = true

  }

  initial_node_labels {

    key = "environment"

    value = "production"

  }

}