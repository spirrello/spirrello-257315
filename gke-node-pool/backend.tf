terraform {
  backend "gcs" {
    bucket = "tfbucket-257315"
    prefix = "gke-dev/gke-node-pools"
    credentials = "account.json"
  }
}
