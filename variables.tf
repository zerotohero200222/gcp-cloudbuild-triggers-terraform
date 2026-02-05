# ============================================================
# Variable Definitions
# ============================================================

variable "project_id" {
  description = "GCP Project ID where Cloud Build triggers will be created"
  type        = string
}

variable "region" {
  description = "GCP region for Cloud Build triggers"
  type        = string
  default     = "us-central1"
}

variable "repository_owner" {
  description = "GitHub repository owner/organization name"
  type        = string
}

variable "service_account_email" {
  description = "Service account email used by Cloud Build for authentication and permissions"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, uat, prod)"
  type        = string
  default     = "dev"
}

variable "base_branch" {
  description = "Base branch pattern for triggers (e.g., feature_01, main, develop)"
  type        = string
  default     = "feature_01"
}

variable "firebase_project_id" {
  description = "Firebase Project ID used by user-service"
  type        = string
}

variable "butter_token" {
  description = "Butter CMS token for frontend-web-static service"
  type        = string
  sensitive   = true
}
