data "google_client_config" "current" {}

terraform {
  required_providers {
    cdap = {
      source  = "GoogleCloudPlatform/cdap"
    #  version = "< 1.0"
    }
  }
}

provider "cdap" {
  host  = "https://example-instance-example-project-dot-usc1.datafusion.googleusercontent.com/api/"
  token = data.google_client_config.current.access_token
}

module "custom_dataproc" {
  source  = "terraform-google-modules/data-fusion/google//modules/dataproc_profile"
  version = "~> 0.1"

  name   = "custom-dataproc"
  label  = "Custom Dataproc Profile"

  network         = "test"
  subnet          = "test"
  service_account = "test-sa"
  gcs_bucket      = "test-bucket"
}
