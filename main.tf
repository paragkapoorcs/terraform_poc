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
