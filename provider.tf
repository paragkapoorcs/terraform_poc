terraform {
  required_providers {
    cdap = {
      source = "GoogleCloudPlatform/cdap"
      version = "0.8.0"
    }
  }
}

provider "cdap" {
  # Configuration options
  host  = "https://example-df-host.com//api/"
  token = data.google_client_config.current.access_token
}
