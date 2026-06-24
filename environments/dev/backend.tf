terraform {
  backend "s3" {

    bucket = "terraform-state-bucket"

    key = "dev/terraform.tfstate"

    region = "ap-hyderabad-1"

    endpoints = {
      s3 = "ocid1.bucket.oc1.ap-hyderabad-1.aaaaaaaappylzajdzl2dlbgpfqp6j5mwvmn3bggogg7nqk5mfhb7s4n3lmua"
    }

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true

    use_path_style = true
  }
}