variable "compartment_id" {
  description = "OCI Compartment OCID"
  type        = string
}

variable "vcn_name" {
  description = "VCN Name"
  type        = string
}

variable "vcn_cidr" {
  description = "VCN CIDR"
  type        = string
}

variable "dns_label" {
  description = "VCN DNS Label"
  type        = string
}

variable "control_plane_subnet_cidr" {
  description = "OKE Control Plane Subnet"
  type        = string
}

variable "worker_subnet_cidr" {
  description = "OKE Worker Subnet"
  type        = string
}

variable "pod_subnet_cidr" {
  description = "OKE Pod Subnet"
  type        = string
}

variable "database_subnet_cidr" {
  description = "Database Subnet"
  type        = string
}