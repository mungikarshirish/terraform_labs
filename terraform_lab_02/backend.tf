terraform {
  backend "s3" {
    bucket       = "tf-tfstate-tfstatebackup"
    key          = "terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
}