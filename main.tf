# ============================================================
# Google Cloud Build Triggers - Complete Multi-Service Configuration
# ============================================================
# This configuration manages Cloud Build triggers for all microservices
# Each service has 2 triggers:
#   1. PR Build - Triggered on Pull Requests to feature_01
#   2. Snapshot Build - Triggered on merge to feature_01
#
# Total Services: 81
# Total Triggers: 162 (81 services × 2 trigger types)
# ============================================================

locals {
  # Common configuration across all triggers
  common_config = {
    project_id            = var.project_id
    region                = var.region
    repository_owner      = var.repository_owner
    service_account_email = var.service_account_email
    base_branch           = var.base_branch
  }

  # Service definitions with Spring Active Profile
  # Standard services with _SPRING_ACTIVE_PROFILE = "feature"
  services_with_spring = {
    aggregator-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    ai-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    analytics-performance-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    analytics-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    assetpair-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    binance-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    binanceus-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    bingx-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    bitcoin-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    bitfinex-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    bitflyer-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    bitget-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    bitstamp-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    bybit-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    cardano-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    coin-pricing-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    coinbase-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    coindcx-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    coinspot-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    coinswitch-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    crypto-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    defi-pricing-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    defi-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    delta-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    dex-service = {
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

    gateio-service = {
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

    htx-service = {
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

    kucoin-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    lbank-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    log-shipping = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    mexc-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    okx-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    performance-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    portfolio-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    solana-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    sui-service = {
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

    ton-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    tracking-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    tron-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    user-request-management-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    user-wallet-archival-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }

    wallet-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }
  }

  # Services without substitution variables
  services_no_substitutions = {
    api-spec = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    blockstats-schemas = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    cache-utils = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    coin-pricing-service-no-sub = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
      repo_name   = "coin-pricing-service"
    }

    common-delegates-metadata = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    common-delegates-mongo = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    common-delegates-userdata = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    common-utils = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    common-utils-costbasis = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    common-utils-tax = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    gateio-service-no-sub = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
      repo_name   = "gateio-service"
    }

    htx-service-no-sub = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
      repo_name   = "htx-service"
    }

    lbank-service-no-sub = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
      repo_name   = "lbank-service"
    }

    mexc-service-no-sub = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
      repo_name   = "mexc-service"
    }

    okx-service-no-sub = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
      repo_name   = "okx-service"
    }

    solana-service-no-sub = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
      repo_name   = "solana-service"
    }

    tax-service-india = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    tax-service-usa = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }

    transaction-labeling = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {}
    }
  }

  # Services with Firebase and Spring configuration
  services_with_firebase = {
    user-service = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _FIREBASE_PROJECT_ID   = var.firebase_project_id
        _SPRING_ACTIVE_PROFILE = "feature"
      }
    }
  }

  # Frontend services with React configuration
  frontend_services = {
    frontend-web = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _REACT_APP_PROFILE = "development"
      }
    }

    frontend-web-static = {
      description = "Build that gets triggered when PR has been raised to feature_01"
      substitutions = {
        _BUTTER_TOKEN      = var.butter_token
        _REACT_APP_PROFILE = "development"
      }
    }
  }

  # Frontend hotfix services (different branch pattern)
  frontend_hotfix_services = {
    frontend-web-hotfix = {
      description = "Build that gets triggered when PR has been raised to hotfix_release_01"
      repo_name   = "frontend-web"
      base_branch = "hotfix_release_01"
      substitutions = {
        _REACT_APP_PROFILE = "development"
        _SERVICE_NAME      = "frontend-web"
      }
    }
  }

  # Combine all services for iteration
  all_services = merge(
    local.services_with_spring,
    local.services_no_substitutions,
    local.services_with_firebase,
    local.frontend_services
  )
}

# ============================================================
# PR Build Triggers (Pull Request)
# ============================================================
# These triggers run when a PR is created against feature_01 branch
# Config file: cloudbuild_prbuild.yaml

resource "google_cloudbuild_trigger" "pr_build" {
  for_each = local.all_services

  name        = "${lookup(each.value, "repo_name", each.key)}-build-pr"
  description = each.value.description
  project     = local.common_config.project_id
  location    = local.common_config.region

  # GitHub repository configuration
  github {
    owner = local.common_config.repository_owner
    name  = lookup(each.value, "repo_name", each.key)

    # Trigger on Pull Requests to feature_01
    pull_request {
      branch          = "^${lookup(each.value, "base_branch", local.common_config.base_branch)}$"
      comment_control = "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"
    }
  }

  # Build configuration file in the repository
  filename = "cloudbuild_prbuild.yaml"

  # Service account for build execution
  service_account = "projects/${local.common_config.project_id}/serviceAccounts/${local.common_config.service_account_email}"

  # Substitution variables passed to the build (only if not empty)
  dynamic "substitutions" {
    for_each = length(each.value.substitutions) > 0 ? [1] : []
    content {
      for k, v in each.value.substitutions : k => v
    }
  }

  # Tags for organization and filtering
  tags = [
    "pr-build",
    lookup(each.value, "repo_name", each.key),
    var.environment
  ]
}

# ============================================================
# Snapshot Build Triggers (Push to Branch)
# ============================================================
# These triggers run when PR is merged to feature_01 branch
# Config file: cloudbuild_snapshotbuild.yaml

resource "google_cloudbuild_trigger" "snapshot_build" {
  for_each = local.all_services

  name        = "${lookup(each.value, "repo_name", each.key)}-build-snapshot"
  description = "Build that gets triggered when PR has been approved and merged to ${lookup(each.value, "base_branch", local.common_config.base_branch)}"
  project     = local.common_config.project_id
  location    = local.common_config.region

  # GitHub repository configuration
  github {
    owner = local.common_config.repository_owner
    name  = lookup(each.value, "repo_name", each.key)

    # Trigger on push to feature_01 (after PR merge)
    push {
      branch = "^${lookup(each.value, "base_branch", local.common_config.base_branch)}$"
    }
  }

  # Build configuration file in the repository
  filename = "cloudbuild_snapshotbuild.yaml"

  # Service account for build execution
  service_account = "projects/${local.common_config.project_id}/serviceAccounts/${local.common_config.service_account_email}"

  # Substitution variables passed to the build (only if not empty)
  dynamic "substitutions" {
    for_each = length(each.value.substitutions) > 0 ? [1] : []
    content {
      for k, v in each.value.substitutions : k => v
    }
  }

  # Tags for organization and filtering
  tags = [
    "snapshot-build",
    lookup(each.value, "repo_name", each.key),
    var.environment
  ]
}

# ============================================================
# Hotfix PR Build Triggers (Pull Request to hotfix_release_01)
# ============================================================

resource "google_cloudbuild_trigger" "hotfix_pr_build" {
  for_each = local.frontend_hotfix_services

  name        = "${each.value.repo_name}-service-hotfix-build-pr"
  description = each.value.description
  project     = local.common_config.project_id
  location    = local.common_config.region

  # GitHub repository configuration
  github {
    owner = local.common_config.repository_owner
    name  = each.value.repo_name

    # Trigger on Pull Requests to hotfix_release_01
    pull_request {
      branch          = "^${each.value.base_branch}$"
      comment_control = "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"
    }
  }

  # Build configuration file in the repository
  filename = "cloudbuild_prbuild.yaml"

  # Service account for build execution
  service_account = "projects/${local.common_config.project_id}/serviceAccounts/${local.common_config.service_account_email}"

  # Substitution variables
  substitutions = each.value.substitutions

  # Tags for organization and filtering
  tags = [
    "hotfix-pr-build",
    each.value.repo_name,
    var.environment
  ]
}

# ============================================================
# Hotfix Snapshot Build Triggers (Push to hotfix_release_01)
# ============================================================

resource "google_cloudbuild_trigger" "hotfix_snapshot_build" {
  for_each = local.frontend_hotfix_services

  name        = "${each.value.repo_name}-service-hotfix-build-snapshot"
  description = "Build that gets triggered when PR has been approved and merged to ${each.value.base_branch}"
  project     = local.common_config.project_id
  location    = local.common_config.region

  # GitHub repository configuration
  github {
    owner = local.common_config.repository_owner
    name  = each.value.repo_name

    # Trigger on push to hotfix_release_01
    push {
      branch = "^${each.value.base_branch}$"
    }
  }

  # Build configuration file in the repository
  filename = "cloudbuild_snapshotbuild.yaml"

  # Service account for build execution
  service_account = "projects/${local.common_config.project_id}/serviceAccounts/${local.common_config.service_account_email}"

  # Substitution variables
  substitutions = each.value.substitutions

  # Tags for organization and filtering
  tags = [
    "hotfix-snapshot-build",
    each.value.repo_name,
    var.environment
  ]
}
