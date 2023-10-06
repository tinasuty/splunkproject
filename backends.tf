terraform {
  backend "s3" {
    bucket         = "splunk8-th-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "tf-example-table"
  }
}