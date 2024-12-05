resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My-bucket-tf-34"
    Environment = "Dev"
  }
}