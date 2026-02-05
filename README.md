# GCP Cloud Build Triggers - Complete Terraform Configuration

## Overview

This Terraform configuration manages **166 Cloud Build triggers** across **83 microservices** in the `bharathaddankieswar` organization:

- **162 Standard triggers** (81 services × 2 triggers each: PR + Snapshot)
- **4 Hotfix triggers** (2 services × 2 triggers each: PR + Snapshot on hotfix branch)

## Project Configuration

- **Project ID**: `eastern-augury-477909-q6`
- **Region**: `us-central1` (Iowa)
- **GitHub Organization**: `bharathaddankieswar`
- **Service Account**: `162720148859-compute@developer.gserviceaccount.com`
- **Firebase Project**: `dev-prj-frontend-apps`

## Architecture

### Trigger Types

1. **PR Build Triggers** (`*-build-pr`)
   - Triggered on Pull Requests to `feature_01` branch
   - Uses: `cloudbuild_prbuild.yaml`
   - Comment control: Required except for owners and collaborators

2. **Snapshot Build Triggers** (`*-build-snapshot`)
   - Triggered on merge/push to `feature_01` branch
   - Uses: `cloudbuild_snapshotbuild.yaml`

3. **Hotfix Triggers** (frontend-web only)
   - Branch: `hotfix_release_01`
   - Same PR + Snapshot pattern

### Service Categories

#### 1. Services with Spring Active Profile (46 services)
These services include `_SPRING_ACTIVE_PROFILE = "feature"`:
- aggregator-service, ai-service, analytics-performance-service, analytics-service, assetpair-service
- binance-service, binanceus-service, bingx-service, bitcoin-service, bitfinex-service
- bitflyer-service, bitget-service, bitstamp-service, bybit-service, cardano-service
- coin-pricing-service, coinbase-service, coindcx-service, coinspot-service, coinswitch-service
- crypto-service, defi-pricing-service, defi-service, delta-service, dex-service
- file-upload-service, gateio-service, gemini-service, htx-service, kraken-service
- kucoin-service, lbank-service, log-shipping, mexc-service, okx-service
- performance-service, portfolio-service, solana-service, sui-service, tax-service
- ton-service, tracking-service, tron-service, user-request-management-service
- user-wallet-archival-service, wallet-service

#### 2. Services without Substitutions (19 services)
- api-spec, blockstats-schemas, cache-utils, common-delegates-metadata
- common-delegates-mongo, common-delegates-userdata, common-utils
- common-utils-costbasis, common-utils-tax, tax-service-india
- tax-service-usa, transaction-labeling

#### 3. Firebase Services (1 service)
- user-service (includes `_FIREBASE_PROJECT_ID` + `_SPRING_ACTIVE_PROFILE`)

#### 4. Frontend Services (2 services)
- frontend-web (includes hotfix triggers)
- frontend-web-static

## Prerequisites

1. **Terraform** >= 1.0.0
2. **Google Cloud SDK** configured
3. **Service Account**: `162720148859-compute@developer.gserviceaccount.com`
4. **Required Permissions**: cloudbuild.triggers.*, iam.serviceAccounts.actAs

## Configuration

Update `dev.tfvars`:

```hcl
project_id            = "eastern-augury-477909-q6"
region                = "us-central1"
repository_owner      = "bharathaddankieswar"
service_account_email = "162720148859-compute@developer.gserviceaccount.com"
environment           = "dev"
base_branch           = "feature_01"
firebase_project_id   = "dev-prj-frontend-apps"
butter_token          = "your-actual-butter-token-here"
```

## Deployment

```bash
# Initialize
terraform init

# Validate
terraform validate

# Plan
terraform plan -var-file="dev.tfvars"

# Apply
terraform apply -var-file="dev.tfvars"

# Verify (should show 166)
gcloud builds triggers list --project=eastern-augury-477909-q6 --region=us-central1 --format="value(name)" | wc -l
```

## Service Account Permissions

Ensure the service account has required roles:
```bash
gcloud projects add-iam-policy-binding eastern-augury-477909-q6 \
  --member="serviceAccount:162720148859-compute@developer.gserviceaccount.com" \
  --role="roles/cloudbuild.builds.builder"
```

## Validation

Run the validation script:
```bash
./validate_triggers.sh eastern-augury-477909-q6 us-central1
```

## Troubleshooting

### Trigger Already Exists
```bash
gcloud builds triggers delete TRIGGER_NAME --region=us-central1 --project=eastern-augury-477909-q6
terraform apply -var-file="dev.tfvars"
```

### Repository Not Found
```bash
gcloud builds repositories list --connection=github --region=us-central1 --project=eastern-augury-477909-q6
```

## Version

- **Version**: 2.0.0
- **Services**: 83
- **Triggers**: 166
- **Organization**: bharathaddankieswar
