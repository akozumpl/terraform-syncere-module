terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.36.0"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region  = "eu-west-2"
}

variable "bucket_name" {
  description = "name of the bucket syncere will use for syncing"
  type = string
}

resource "aws_s3_bucket" "syncere" {
  bucket           = var.bucket_name

  tags = {
    Name = "syncere"
  }
}
