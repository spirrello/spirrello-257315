terraform {
  backend "gcs" {
    bucket      = "tfbucket-257315"
    prefix      = "tfstate/gke"
    credentials = "account.json"
  }
}
