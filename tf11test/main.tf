terraform {
  required_version = "~> 0.11"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "2.3"
    }
  }

  backend "local" {
    path = "tf11test/terraform.tfstate"
  }
}

data terraform_remote_state tfv1 {
  backend = "local"

  config = {
    path = "C:/Code/tfv1test/terraform.tfstate"
  }
}

provider "random" {}

resource "random_integer" "integer" {
  min = 1000
  max = 9999
}

output "tfv11output" {
  value = "tfv11-${random_integer.integer.result}"
}

output readstatefile {
    value = "${data.terraform_remote_state.tfv1.tfv1output}"
}