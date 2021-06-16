terraform {
  required_version = "~> 1"

  required_providers {
    random = {
      source  = "hashicorp/random"
    }
  }

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

provider random {}

resource random_integer integer {
  min = 1000
  max = 9999
}

output readstatefile {
    value = data.terraform_remote_state.tf11.outputs.tfv11output
}

output tfv1output {
  value = "tfv1-${random_integer.integer.result}"
}
