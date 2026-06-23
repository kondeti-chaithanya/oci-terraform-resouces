############################################################
# Queue Module Variables
############################################################

variable "compartment_id" {
  description = "OCI Compartment OCID"
  type        = string
}

variable "queue_name" {
  description = "OCI Queue Name"
  type        = string
}

variable "retention_in_seconds" {
  description = "Message Retention Period"
  type        = number
  default     = 345600
}

variable "visibility_in_seconds" {
  description = "Message Visibility Timeout"
  type        = number
  default     = 30
}

variable "timeout_in_seconds" {
  description = "Long Poll Timeout"
  type        = number
  default     = 10
}

variable "dead_letter_queue_delivery_count" {
  description = "Maximum Delivery Attempts"
  type        = number
  default     = 5
}

variable "channel_consumption_limit" {
  description = "Queue Channel Consumption Limit"
  type        = number
  default     = 100
}