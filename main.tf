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

resource "cdap_namespace" "namespace" {
    name = "test"
}

resource "cdap_profile" "profile" {
    name  = "dataproc112"
    label = "dataproc112"
    namespace= "test"
    profile_provisioner {
        name = "gcp-dataproc"
        properties {
            name        = "projectId"
            value       = "dev-cs-1"
            is_editable = false
        }
    }
}
