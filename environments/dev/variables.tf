############################################################
# Provider Variables
############################################################

variable "tenancy_ocid" {
  description = "OCI Tenancy OCID"
  type        = string
}

variable "user_ocid" {
  description = "OCI User OCID"
  type        = string
}

variable "fingerprint" {
  description = "OCI API Key Fingerprint"
  type        = string
}

variable "private_key_path" {
  description = "OCI API Private Key Path"
  type        = string
}

variable "region" {
  description = "OCI Region"
  type        = string
}

variable "compartment_id" {
  description = "OCI Compartment OCID"
  type        = string
}

############################################################
# Network Variables
############################################################

variable "vcn_name" {
  type = string
}

variable "vcn_cidr" {
  type = string
}

variable "dns_label" {
  type = string
}

variable "control_plane_subnet_cidr" {
  type = string
}

variable "worker_subnet_cidr" {
  type = string
}

variable "pod_subnet_cidr" {
  type = string
}

variable "database_subnet_cidr" {
  type = string
}

############################################################
# OKE Variables
############################################################

variable "cluster_name" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "node_shape" {
  type = string
}

variable "node_ocpus" {
  type = number
}

variable "node_memory_gbs" {
  type = number
}

variable "node_pool_size" {
  type = number
}



############################################################
# Database Variables
############################################################



variable "hostname" {
  type = string
}

variable "db_system_name" {
  type = string
}

variable "db_name" {
  type = string
}

variable "db_version" {
  type = string
}

variable "db_shape" {
  type = string
}

variable "db_cpu_core_count" {
  type = number
}

variable "db_storage_size" {
  type = number
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "db_ssh_public_keys" {
  type = list(string)
}

variable "database_edition" {
  type = string
}

############################################################
# Queue Variables
############################################################

variable "queue_name" {
  type = string
}

variable "retention_in_seconds" {
  type = number
}

variable "visibility_in_seconds" {
  type = number
}

variable "timeout_in_seconds" {
  type = number
}

variable "dead_letter_queue_delivery_count" {
  type = number
}

variable "channel_consumption_limit" {
  type = number
}