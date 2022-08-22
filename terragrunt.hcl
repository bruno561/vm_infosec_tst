remote_state {
  backend = "gcs"
    generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    project                = "curso-de-gcp-358518"
    location               = "us-central1"
    bucket                 = "terraform-brunolabs"
    prefix                 = "${path_relative_to_include()}/terraform.tfstate"
  }
}