terraform {
  required_version = "~> 1"

  backend "local" {
    path = "terraform.tfstate"
  }
}

data terraform_remote_state tf11 {
  backend = "local"

  config = {
    path = "C:/Code/tf11test/terraform.tfstate"
  }
}

output readstatefile {
    value = data.terraform_remote_state.tf11.outputs.tfv11output
}