# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "hashim-terraform-remote-state"
    key            = "terraform.modules/ecs/terraform.tfstate"
    region         = "eu-west-1" # backend configuration does not accept variables
    profile        = "terraform-user"
    dynamodb_table = "terraform-state-lock"
  }
}