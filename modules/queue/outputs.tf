############################################################
# Queue Outputs
############################################################

output "queue_id" {
  description = "Queue OCID"
  value       = oci_queue_queue.queue.id
}

output "queue_name" {
  description = "Queue Name"
  value       = oci_queue_queue.queue.display_name
}

output "messages_endpoint" {
  description = "Queue Messages Endpoint"
  value       = oci_queue_queue.queue.messages_endpoint
}