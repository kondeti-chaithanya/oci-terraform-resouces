############################################################
# OCI Queue
############################################################

resource "oci_queue_queue" "queue" {

  compartment_id = var.compartment_id

  display_name = var.queue_name

  retention_in_seconds = var.retention_in_seconds

  visibility_in_seconds = var.visibility_in_seconds

  timeout_in_seconds = var.timeout_in_seconds

  dead_letter_queue_delivery_count = var.dead_letter_queue_delivery_count

  channel_consumption_limit = var.channel_consumption_limit

}