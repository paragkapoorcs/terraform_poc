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

resource "cdap_profile" "profile" {
  name  = "pradeeppoc2"
  label = "pradeeppoc2"
  profile_provisioner {
    name = "gcp-existing-dataproc"
    properties {
      name        = "projectId"
      value       = "dev-cs-1"
      is_editable = true
    }
  }
}
