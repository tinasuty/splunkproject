##S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "splunk8-th-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

##dynamoDB
resource "aws_dynamodb_table" "splunk8_example_table" {
  name           = "tf-example-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}