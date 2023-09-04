terraform {
  backend "s3" {
    bucket = "ars1234"
    key    = "aws-s3/ars1234"
    region = "us-east-1"
  }
}
