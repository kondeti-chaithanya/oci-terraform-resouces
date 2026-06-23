output "vcn_id" {
  value = oci_core_virtual_network.vcn.id
}

output "control_plane_subnet_id" {
  value = oci_core_subnet.control_plane.id
}

output "worker_subnet_id" {
  value = oci_core_subnet.worker.id
}

output "pod_subnet_id" {
  value = oci_core_subnet.pod.id
}

output "database_subnet_id" {
  value = oci_core_subnet.database.id
}

output "private_route_table_id" {
  value = oci_core_route_table.private_rt.id
}

output "public_route_table_id" {
  value = oci_core_route_table.public_rt.id
}