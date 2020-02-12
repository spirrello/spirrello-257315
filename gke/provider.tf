provider "google-beta" {
  credentials = file("account.json")
  project     = var.project
  region      = var.region
  version     = "~> 3.3"
}


provider "google" {
  credentials = file("account.json")
  project     = var.project
  region      = var.region
  version     = "~> 2.16"
}
