terraform {
  backend "remote" {
    organization = "Carlo-Cloud"
    workspaces {
      name = "terraform-aws-vpc-peering"
    }
  }
}