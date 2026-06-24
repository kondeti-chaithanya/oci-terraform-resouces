#############################
# Provider
#############################

tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaajlhymw4xx6sizpniwsw7qptvppgfhfnnvzvdxpcfiioic6qc342a"
user_ocid        = "ocid1.user.oc1..aaaaaaaappahtjb4wofrtfu44jwo4awh7eh36s6m4fne6eb6apat2g43pqeq"
fingerprint      = "e7:8c:82:f6:26:49:e3:2b:37:ee:cd:f6:56:cb:91:17"
private_key_path = "C:\\Users\\kondeti.kumar\\Downloads\\pranay.pondala@gmail.com-2026-06-23T10_37_42.812Z.pem"
region           = "ap-hyderabad-1"

compartment_id = "ocid1.tenancy.oc1..aaaaaaaajlhymw4xx6sizpniwsw7qptvppgfhfnnvzvdxpcfiioic6qc342a"

#############################
# Network
#############################

vcn_name = "dev-vcn"

vcn_cidr = "10.0.0.0/16"

dns_label = "dev"

control_plane_subnet_cidr = "10.0.0.0/24"

worker_subnet_cidr = "10.0.1.0/24"

pod_subnet_cidr = "10.0.2.0/24"

database_subnet_cidr = "10.0.3.0/24"

#############################
# OKE
#############################

cluster_name = "dev-oke"

kubernetes_version = "v1.30.1"

node_shape = "VM.Standard.E5.Flex"

node_ocpus = 2

node_memory_gbs = 16

node_pool_size = 3



#############################
# Database
#############################



hostname = "db01"

db_system_name = "dev-db"

db_name = "DEVDB"

db_version = "19.0.0.0"

db_shape = "VM.Standard.E5.Flex"

db_cpu_core_count = 2

db_storage_size = 256

admin_password = "admin@1234567890"

db_ssh_public_keys = [
  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCqN9DHJy6PQXI/lRCrOVQGlDdMHfexlv0A5G/Sxlxj9vraiCAh7DCAHKOfwSEvYzwb6heWCTGw33pqrXYVS81ZlMlbtdldZ/eaSdDUn0cQi6RZkuEH67S7eTVa3rai+0TmkX8gqO2purdB9fZlQpWbLsKjFDG44gduCY522kVEL7zEAc3AlesrNPLrBAropEOdO0uDMGGOWLEZ6He9ieLc+XefB95SbjSSaRebfBXvaAYiRMfRVJq+cCGqv8rnWKLuNs+xlJP/5MYzrIi6FREGNEcqr1jTXQ0QvLH7S6kdlk77UNZdr0XHodtB6oN/XyZkduQt0R/qSL2DMP6vW3PSLQPmGc6CSmBVuNyaqlrQg7lLyd5gUN7E+nHLZO7ydV7hgFvLpN2c4sZjIyvF8sNXfgpdFPKkcCI+ZlV7FuoSmZr2Xgzq4z9Eb0MdfwrpVPX2Z4ZJpvXjF+L00ggkKulhdyo/zOoeQRkM7tgEj3dywTsbeluhfBd0F/3BkLIuYgk= pranay_pon@c1bcb1051018"
]

database_edition = "ENTERPRISE_EDITION"

#############################
# Queue
#############################

queue_name = "dev-queue"

retention_in_seconds = 345600

visibility_in_seconds = 30

timeout_in_seconds = 10

dead_letter_queue_delivery_count = 5

channel_consumption_limit = 100