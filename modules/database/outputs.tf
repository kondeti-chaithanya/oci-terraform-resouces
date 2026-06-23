############################################################
# Database Outputs
############################################################

output "db_system_id" {
  description = "OCI DB System OCID"
  value       = oci_database_db_system.db_system.id
}

output "db_system_name" {
  description = "Database System Name"
  value       = oci_database_db_system.db_system.display_name
}

output "hostname" {
  description = "Database Hostname"
  value       = oci_database_db_system.db_system.hostname
}

output "shape" {
  description = "Database Shape"
  value       = oci_database_db_system.db_system.shape
}

output "database_edition" {
  description = "Database Edition"
  value       = oci_database_db_system.db_system.database_edition
}

output "cpu_core_count" {
  description = "CPU Core Count"
  value       = oci_database_db_system.db_system.cpu_core_count
}

output "data_storage_size_in_gb" {
  description = "Allocated Storage"
  value       = oci_database_db_system.db_system.data_storage_size_in_gb
}