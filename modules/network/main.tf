############################################################
# Virtual Cloud Network
############################################################

resource "oci_core_virtual_network" "vcn" {

  compartment_id = var.compartment_id

  display_name = var.vcn_name

  cidr_block = var.vcn_cidr

  dns_label = var.dns_label

}

############################################################
# Internet Gateway
############################################################

resource "oci_core_internet_gateway" "igw" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  display_name = "${var.vcn_name}-igw"

  enabled = true

}

############################################################
# NAT Gateway
############################################################

resource "oci_core_nat_gateway" "nat" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  display_name = "${var.vcn_name}-nat"

}

############################################################
# OCI Services
############################################################

data "oci_core_services" "services" {

}

############################################################
# Service Gateway
############################################################

resource "oci_core_service_gateway" "sgw" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  display_name = "${var.vcn_name}-sgw"

  services {

    service_id = data.oci_core_services.services.services[0].id

  }

}

resource "oci_core_route_table" "private_rt" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  display_name = "private-route-table"

  route_rules {

    destination = "0.0.0.0/0"

    destination_type = "CIDR_BLOCK"

    network_entity_id = oci_core_nat_gateway.nat.id

  }

}

resource "oci_core_route_table" "public_rt" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  display_name = "public-route-table"

  route_rules {

    destination = "0.0.0.0/0"

    destination_type = "CIDR_BLOCK"

    network_entity_id = oci_core_internet_gateway.igw.id

  }

}

resource "oci_core_subnet" "control_plane" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  cidr_block = var.control_plane_subnet_cidr

  display_name = "oke-control-plane"

  route_table_id = oci_core_route_table.private_rt.id

  prohibit_public_ip_on_vnic = true

}

resource "oci_core_subnet" "worker" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  cidr_block = var.worker_subnet_cidr

  display_name = "oke-worker"

  route_table_id = oci_core_route_table.private_rt.id

  prohibit_public_ip_on_vnic = true

}

resource "oci_core_subnet" "pod" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  cidr_block = var.pod_subnet_cidr

  display_name = "oke-pod"

  route_table_id = oci_core_route_table.private_rt.id

  prohibit_public_ip_on_vnic = true

}

resource "oci_core_subnet" "database" {

  compartment_id = var.compartment_id

  vcn_id = oci_core_virtual_network.vcn.id

  cidr_block = var.database_subnet_cidr

  display_name = "database"

  route_table_id = oci_core_route_table.private_rt.id

  prohibit_public_ip_on_vnic = true

}

