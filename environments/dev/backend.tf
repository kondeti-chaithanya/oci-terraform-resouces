terraform {

  backend "s3" {

    bucket = "terraform-state-bucket"

    key = "dev/terraform.tfstate"

    region = "ap-hyderabad-1"

    endpoint = "https://axrmhle1x89t.compat.objectstorage.ap-hyderabad-1.oraclecloud.com"

    skip_region_validation = true

    skip_credentials_validation = true

    skip_metadata_api_check = true

    force_path_style = true

  }

}