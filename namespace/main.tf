data "google_client_config" "current" {}

resource "cdap_namespace" "namespace" {
  name = "terraformpoc"
}
