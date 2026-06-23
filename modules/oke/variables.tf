variable "compartment_id" {
  description = "OCI Compartment OCID"
  type        = string
}

variable "cluster_name" {
  description = "OKE Cluster Name"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes Version"
  type        = string
}

variable "vcn_id" {
  description = "VCN ID"
  type        = string
}

variable "control_plane_subnet_id" {
  description = "Control Plane Subnet"
  type        = string
}

variable "worker_subnet_id" {
  description = "Worker Node Subnet"
  type        = string
}

variable "pod_subnet_id" {
  description = "Pod Subnet"
  type        = string
}

variable "node_shape" {
  description = "Worker Node Shape"
  type        = string
}

variable "node_ocpus" {
  description = "Worker OCPUs"
  type        = number
}

variable "node_memory_gbs" {
  description = "Worker Memory"
  type        = number
}

variable "node_pool_size" {
  description = "Number of Worker Nodes"
  type        = number
}

