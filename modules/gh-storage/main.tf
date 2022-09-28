resource "google_storage_bucket" "github-store" {
  project = var.project_id
  default_event_based_hold = false
  force_destroy            = false
  labels = {
    "bucket" = "github-store"
    "tf"     = "true"
  }
  location                    = "EU"
  name                        = "github-store"
  requester_pays              = false
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}