module "s3_bucket"  {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.s3_bucket
  acl    =var.acl2
  control_object_ownership =var.control_object_ownership
  object_ownership         = var.object_ownership

  versioning = {
    enabled = true
  }
}


output "aws_s3_bucket_name" {
  value = module.s3_bucket.s3_bucket_id
}
