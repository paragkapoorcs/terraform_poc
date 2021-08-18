data "google_client_config" "current" {}

provider "cdap" {
  host  = "https://example-instance-example-project-dot-usc1.datafusion.googleusercontent.com/api/"
  token = data.google_client_config.current.access_token
}
resource "cdap_profile" "profile" {
    name  = "example-profile"
    label = "example-profile"
    profile_provisioner {
        name = "gcp-dataproc"
        properties {
            name        = "projectId"
            value       = "example-project"
            is_editable = false
        }
    }
}
