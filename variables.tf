variable "artifact_registry_repository_iam_policies" {
  description = <<EOT
Map of artifact_registry_repository_iam_policies, attributes below
Required:
    - policy_data
    - repository
Optional:
    - location
    - project
EOT

  type = map(object({
    policy_data = string
    repository  = string
    location    = optional(string)
    project     = optional(string)
  }))
}

