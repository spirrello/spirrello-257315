
terraform {
  backend "gcs" {
    bucket = "tfbucket-257315"
    prefix = "gke-dev/gke-node-pools"
    credentials = "account.json"
  }
}

provider "google-beta" {
  credentials = "${file("account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
  version = "~> 3.3"
}
#commenting out to test Istio deployment
# provider "google" {
#   credentials = "${file("account.json")}"
#   project     = "${var.project}"
#   region      = "${var.region}"
#   version = "~> 2.16"
# }
