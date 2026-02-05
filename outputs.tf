# ============================================================
# Output Definitions
# ============================================================

# ============================================================
# PR Build Trigger Outputs
# ============================================================

output "pr_build_trigger_ids" {
  description = "Map of PR build trigger IDs"
  value = {
    for name, trigger in google_cloudbuild_trigger.pr_build :
    name => trigger.id
  }
}

output "pr_build_trigger_names" {
  description = "Map of PR build trigger names"
  value = {
    for name, trigger in google_cloudbuild_trigger.pr_build :
    name => trigger.name
  }
}

# ============================================================
# Snapshot Build Trigger Outputs
# ============================================================

output "snapshot_build_trigger_ids" {
  description = "Map of snapshot build trigger IDs"
  value = {
    for name, trigger in google_cloudbuild_trigger.snapshot_build :
    name => trigger.id
  }
}

output "snapshot_build_trigger_names" {
  description = "Map of snapshot build trigger names"
  value = {
    for name, trigger in google_cloudbuild_trigger.snapshot_build :
    name => trigger.name
  }
}

# ============================================================
# Summary Outputs
# ============================================================

output "total_triggers_created" {
  description = "Total number of Cloud Build triggers created"
  value       = length(google_cloudbuild_trigger.pr_build) + length(google_cloudbuild_trigger.snapshot_build)
}

output "services_configured" {
  description = "List of services with triggers configured"
  value       = keys(google_cloudbuild_trigger.pr_build)
}

# ============================================================
# Console URLs
# ============================================================

output "cloud_build_triggers_console_url" {
  description = "URL to view all Cloud Build triggers in GCP Console"
  value       = "https://console.cloud.google.com/cloud-build/triggers?region=${var.region}&project=${var.project_id}"
}

output "cloud_build_history_console_url" {
  description = "URL to view Cloud Build history in GCP Console"
  value       = "https://console.cloud.google.com/cloud-build/builds?project=${var.project_id}"
}

# ============================================================
# Detailed Trigger Information
# ============================================================

output "pr_triggers_details" {
  description = "Detailed information about PR build triggers"
  value = {
    for name, trigger in google_cloudbuild_trigger.pr_build :
    name => {
      trigger_id  = trigger.trigger_id
      name        = trigger.name
      description = trigger.description
      repository  = "${var.repository_owner}/${name}"
      branch      = var.base_branch
      filename    = trigger.filename
      console_url = "https://console.cloud.google.com/cloud-build/triggers;region=${var.region}/${trigger.trigger_id}?project=${var.project_id}"
    }
  }
}

output "snapshot_triggers_details" {
  description = "Detailed information about snapshot build triggers"
  value = {
    for name, trigger in google_cloudbuild_trigger.snapshot_build :
    name => {
      trigger_id  = trigger.trigger_id
      name        = trigger.name
      description = trigger.description
      repository  = "${var.repository_owner}/${name}"
      branch      = var.base_branch
      filename    = trigger.filename
      console_url = "https://console.cloud.google.com/cloud-build/triggers;region=${var.region}/${trigger.trigger_id}?project=${var.project_id}"
    }
  }
}

