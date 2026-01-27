# ============================================================
# Google Cloud Build Triggers - Multi-Service Configuration
# ============================================================
# This configuration manages Cloud Build triggers for 6 microservices
# Each service has 2 triggers:
#   1. PR Build - Triggered on Pull Requests to feature_01
#   2. Snapshot Build - Triggered on merge to feature_01
# 
# Total Triggers: 12 (6 services × 2 trigger types)
# ============================================================

locals {
  # Common configuration across all triggers
  common_config = {
    project_id            = var.project_id
    region                = var.region
    repository_owner      = var.repository_owner
    service_account_email = var.service_account_email
    base_branch          = var.base_branch
  }

  # Service definitions
  # Each service automatically gets both PR and Snapshot triggers
  services = {
    aggregator-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }
    
    file-upload-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }
    
    gemini-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }
    
    kraken-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }
    
    tax-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }
    
    user-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      # user-service has additional Firebase configuration
      substitutions = {
        _FIREBASE_PROJECT_ID   = var.firebase_project_id
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }
  }
}

# ============================================================
# PR Build Triggers (Pull Request)
# ============================================================
# These triggers run when a PR is created against feature_01 branch
# Config file: cloudbuild_prbuild.yaml

resource "google_cloudbuild_trigger" "pr_build" {
  for_each = local.services

  name        = "${each.key}-build-pr"
  description = each.value.description
  project     = local.common_config.project_id
  location    = local.common_config.region

  # GitHub repository configuration
  github {
    owner = local.common_config.repository_owner
    name  = each.key

    # Trigger on Pull Requests to feature_01
    pull_request {
      branch          = "^${local.common_config.base_branch}$"
      comment_control = "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"
    }
  }

  # Build configuration file in the repository
  filename = "cloudbuild_prbuild.yaml"

  # Service account for build execution
  service_account = "projects/${local.common_config.project_id}/serviceAccounts/${local.common_config.service_account_email}"

  # Substitution variables passed to the build
  substitutions = each.value.substitutions

  # Tags for organization and filtering
  tags = [
    "pr-build",
    each.key,
    var.environment
  ]
}

# ============================================================
# Snapshot Build Triggers (Push to Branch)
# ============================================================
# These triggers run when PR is merged to feature_01 branch
# Config file: cloudbuild_snapshotbuild.yaml

resource "google_cloudbuild_trigger" "snapshot_build" {
  for_each = local.services

  name        = "${each.key}-build-snapshot"
  description = "Build that gets triggered when PR has been approved and merged to ${local.common_config.base_branch}"
  project     = local.common_config.project_id
  location    = local.common_config.region

  # GitHub repository configuration
  github {
    owner = local.common_config.repository_owner
    name  = each.key

    # Trigger on push to feature_01 (after PR merge)
    push {
      branch = "^${local.common_config.base_branch}$"
    }
  }

  # Build configuration file in the repository
  filename = "cloudbuild_snapshotbuild.yaml"

  # Service account for build execution
  service_account = "projects/${local.common_config.project_id}/serviceAccounts/${local.common_config.service_account_email}"

  # Substitution variables passed to the build
  substitutions = each.value.substitutions

  # Tags for organization and filtering
  tags = [
    "snapshot-build",
    each.key,
    var.environment
  ]
}
