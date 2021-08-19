resource "cdap_application" "pipeline" {
    name = "terraformpoc"
    spec = file("${path.module}/bq.json"
}
