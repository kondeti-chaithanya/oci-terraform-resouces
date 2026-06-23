module "network" {

  source = "../../modules/network"

  compartment_id = var.compartment_id
  vcn_name       = var.vcn_name
  vcn_cidr       = var.vcn_cidr
  dns_label      = var.dns_label

  control_plane_subnet_cidr = var.control_plane_subnet_cidr
  worker_subnet_cidr        = var.worker_subnet_cidr
  pod_subnet_cidr           = var.pod_subnet_cidr
  database_subnet_cidr      = var.database_subnet_cidr
}

module "oke" {

  source = "../../modules/oke"

  compartment_id     = var.compartment_id
  cluster_name       = var.cluster_name
  kubernetes_version = var.kubernetes_version

  vcn_id                  = module.network.vcn_id
  control_plane_subnet_id = module.network.control_plane_subnet_id
  worker_subnet_id        = module.network.worker_subnet_id
  pod_subnet_id           = module.network.pod_subnet_id

  node_shape      = var.node_shape
  node_ocpus      = var.node_ocpus
  node_memory_gbs = var.node_memory_gbs
  node_pool_size  = var.node_pool_size

}

module "database" {

  source = "../../modules/database"

  compartment_id = var.compartment_id

  subnet_id = module.network.database_subnet_id

  hostname       = var.hostname
  db_system_name = var.db_system_name
  db_name        = var.db_name
  db_version     = var.db_version

  shape                   = var.db_shape
  cpu_core_count          = var.db_cpu_core_count
  data_storage_size_in_gb = var.db_storage_size

  admin_password  = var.admin_password
  ssh_public_keys = var.db_ssh_public_keys

  database_edition = var.database_edition
}

module "queue" {

  source = "../../modules/queue"

  compartment_id = var.compartment_id

  queue_name = var.queue_name

  retention_in_seconds = var.retention_in_seconds

  visibility_in_seconds = var.visibility_in_seconds

  timeout_in_seconds = var.timeout_in_seconds

  dead_letter_queue_delivery_count = var.dead_letter_queue_delivery_count

  channel_consumption_limit = var.channel_consumption_limit
}

