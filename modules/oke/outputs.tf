############################################################
# OKE Outputs
############################################################

output "cluster_id" {
  description = "OKE Cluster OCID"
  value       = oci_containerengine_cluster.oke_cluster.id
}

output "cluster_name" {
  description = "OKE Cluster Name"
  value       = oci_containerengine_cluster.oke_cluster.name
}

output "kubernetes_version" {
  description = "Kubernetes Version"
  value       = oci_containerengine_cluster.oke_cluster.kubernetes_version
}

output "cluster_endpoint" {
  description = "Private Kubernetes API Endpoint"
  value       = oci_containerengine_cluster.oke_cluster.endpoints[0].private_endpoint
}

output "node_pool_id" {
  description = "OKE Node Pool OCID"
  value       = oci_containerengine_node_pool.node_pool.id
}