terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 6.6.0"
    }
    flux = {
      source  = "fluxcd/flux"
      version = ">= 1.5.1"
    }
  }
}
