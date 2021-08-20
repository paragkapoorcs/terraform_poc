module "data-fusion_dataproc_profile" {
  source  = "terraform-google-modules/data-fusion/google//modules/dataproc_profile"
  version = "0.1.1"
  # insert the 2 required variables here
}
  
data "google_client_config" "current" {}

provider "cdap" {
  host  = "https://example-instance-example-project-dot-usc1.datafusion.googleusercontent.com/api/"
  token = data.google_client_config.current.access_token
}

module "custom_dataproc" {
  source  = "terraform-google-modules/data-fusion/google//modules/dataproc_profile"
  version = "~> 0.1"

  name   = "custom-dataproc"
  label  = "Custom Dataproc Profile"

  network         = "example-network"
  subnet          = "example-subnetwork"
  service_account = "example-sa"
  gcs_bucket      = "example-bucket"
}
