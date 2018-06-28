resource "aws_s3_bucket" "chaspy" {
  bucket = "my-tf-test-bucket-chaspy"
  acl    = "private"

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
