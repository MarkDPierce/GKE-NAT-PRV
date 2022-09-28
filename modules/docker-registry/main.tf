resource "google_artifact_registry_repository" "dockrepo" {
  project = var.project_id
  location      = var.region
  repository_id = "sandbox-repository"
  description   = "example docker repository"
  format        = "DOCKER"
}