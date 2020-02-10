module "terraform-state" {
  source = "github.com/spirrello/terraform-gcp.git//modules/storage_bucket?ref=node-pools"
  providers = {
    google = google-beta.google_beta
  }
  name = "spirrello-test-tfbucket-0"
}
