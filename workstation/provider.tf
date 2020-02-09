provider "aws" {
  region = "us-west-2"
}

# a non default configuration for another region
provider "aws" {
  alias  = "euw2"
  region = "europe-west-2"
}



