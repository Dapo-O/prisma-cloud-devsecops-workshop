provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "4445376c-ed7a-4f9c-981b-f8df77d433be"
    git_commit           = "9cd0ef74d6e2a12c6ccae99f61afec4424ea1967"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 18:12:23"
    git_last_modified_by = "108068856+Dapo-O@users.noreply.github.com"
    git_modifiers        = "108068856+Dapo-O"
    git_org              = "Dapo-O"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
