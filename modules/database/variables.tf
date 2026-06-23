variable "compartment_id" {
  description = "OCI Compartment OCID"
  type        = string
}



variable "subnet_id" {
  description = "Database Subnet"
  type        = string
}

variable "hostname" {
  description = "Database Hostname"
  type        = string
}

variable "db_system_name" {
  description = "DB System Display Name"
  type        = string
}

variable "db_name" {
  description = "Database Name"
  type        = string
}

variable "db_version" {
  description = "Oracle Database Version"
  type        = string
}

variable "shape" {
  description = "DB System Shape"
  type        = string
}

variable "cpu_core_count" {
  description = "CPU Core Count"
  type        = number
}

variable "data_storage_size_in_gb" {
  description = "Storage Size"
  type        = number
}

variable "admin_password" {
  description = "SYS Password"
  type        = string
  sensitive   = true
}

variable "ssh_public_keys" {
  description = "SSH Public Keys"
  type        = list(string)
}

variable "database_edition" {
  description = "Oracle Database Edition"
  type        = string
}