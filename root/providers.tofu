# OpenTofu Configuration for Remote State Decryption
# Handles decryption of encrypted remote state files from logos project

terraform {
  # State and Plan Encryption
  # https://opentofu.org/docs/language/state/encryption

  # Remote State Encryption Configuration
  # Required to decrypt logos remote state files that are encrypted with GCP KMS
  encryption {
    # Unencrypted fallback method for bootstrapping/migration
    method "unencrypted" "migrate" {}

    # Key provider for logos state decryption
    # Uses encrypted_metadata_alias to match logos project's key provider
    key_provider "gcp_kms" "logos" {
      encrypted_metadata_alias = "key_provider.gcp_kms.default"
      kms_encryption_key       = "projects/pt-corpus-tf16-prod/locations/us/keyRings/state-encryption/cryptoKeys/default"
      key_length               = 32
    }

    # AES-GCM method for decrypting logos remote state
    method "aes_gcm" "logos" {
      keys = key_provider.gcp_kms.logos
    }

    # Configure remote state data sources to use logos decryption
    remote_state_data_sources {
      default {
        method = method.aes_gcm.logos

        fallback {
          method = method.unencrypted.migrate
        }
      }
    }
  }
}
