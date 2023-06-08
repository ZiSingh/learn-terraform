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
