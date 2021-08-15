remote_state {
  backend = "s3"

  config = {
    bucket         = "terraform-nu2dp3915g"
    dynamodb_table = "terraform"
    encrypt        = true
    key            = "jinventory/state.tf"
    region         = "eu-west-1"
  }

  generate = {
    path      = "override.tf"
    if_exists = "overwrite_terragrunt"
  }
}

locals {
  secrets = jsondecode(sops_decrypt_file("secrets/secrets.tfvars.json"))
}

inputs = merge(
  local.secrets,
  {}
)
