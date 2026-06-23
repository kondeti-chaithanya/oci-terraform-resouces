############################################################
# OCI DB System
############################################################

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}
resource "oci_database_db_system" "db_system" {

  compartment_id      = var.compartment_id

  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name

  subnet_id           = var.subnet_id

  display_name        = var.db_system_name

  hostname            = var.hostname

  shape               = var.shape

  cpu_core_count      = var.cpu_core_count

  database_edition    = var.database_edition

  ssh_public_keys     = var.ssh_public_keys

  data_storage_size_in_gb = var.data_storage_size_in_gb

  node_count = 1

  db_home {

    db_version = var.db_version

    database {

      db_name = var.db_name

      admin_password = var.admin_password

      db_workload = "OLTP"

      pdb_name = "PDB1"

      character_set = "AL32UTF8"

      ncharacter_set = "AL16UTF16"

    }

  }

}