terraform {
  backend "s3" {
    bucket = "myterraformcodebucket126583468756"
    key = "terraform_state_file/terraform.tfstate"
    region = "us-east-1"
    }
    
}