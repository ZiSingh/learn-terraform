terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = "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"
  owner = "zsingh"
}
resource "github_repository" "Zsingh-repo-1" {
  name        = "Zsingh terraform-demo-1"
  description = "Zi Singh awesome codebase"

  visibility = "public"
}