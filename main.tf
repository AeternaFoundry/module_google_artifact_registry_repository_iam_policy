resource "google_artifact_registry_repository_iam_policy" "artifact_registry_repository_iam_policies" {
  for_each = var.artifact_registry_repository_iam_policies

  policy_data = each.value.policy_data
  repository  = each.value.repository
  location    = each.value.location
  project     = each.value.project
}

