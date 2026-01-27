# ============================================================
# Terraform and Provider Configuration
# ============================================================

terraform {
  required_version = ">= 1.3.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  # Optional: Configure backend for remote state management
  # Uncomment and configure when ready for production use
  # 
  # backend "gcs" {
  #   bucket = "your-terraform-state-bucket"
  #   prefix = "cloudbuild-triggers"
  # }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
