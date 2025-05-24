provider "aws" {
  region = "ap-south-1"
}

# 1. Create a KMS key
resource "aws_kms_key" "s3_kms" {
  description             = "KMS key for encrypting S3 bucket"
  deletion_window_in_days = 7
  enable_key_rotation     = true
}

resource "aws_kms_alias" "s3_kms_alias" {
  name          = "alias/s3-encryption-key"
  target_key_id = aws_kms_key.s3_kms.id
}

# 2. Create an S3 bucket
resource "aws_s3_bucket" "secure_bucket" {
  bucket = "my-secure-bucket-${random_id.rand.hex}"

  force_destroy = true

  tags = {
    Environment = "Dev"
    Name        = "My Secure Bucket"
  }
}

# 3. Random suffix to avoid bucket name conflict
resource "random_id" "rand" {
  byte_length = 4
}

# 4. Enable default encryption using KMS key
resource "aws_s3_bucket_server_side_encryption_configuration" "sse" {
  bucket = aws_s3_bucket.secure_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.s3_kms.arn
    }
  }
}

