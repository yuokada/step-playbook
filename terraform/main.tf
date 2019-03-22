terraform {
  required_version = "= 0.11.13"
}

provider "aws" {
  alias = "prod"

  version    = "= 2.3.0"
  region     = "${var.region}"
  access_key = "${var.prod_access_key}"
  secret_key = "${var.prod_secret_key}"
}

# see: https://www.terraform.io/docs/providers/aws/d/iam_policy_document.html
data "aws_iam_policy_document" "example" {
  provider = "aws.prod"

  statement {
    sid    = "AllowTest000001"
    effect = "Allow"

    principals {
      type = "AWS"

      identifiers = ["${var.test_account_arn}"]
    }

    actions = ["s3:*"]

    # see: https://qiita.com/ringo/items/9e05df9da984fdc059f3
    resources = [
      "arn:aws:s3:::${var.bucket_name}/*",
    ]
  }
}

resource "aws_s3_bucket" "prod" {
  provider = "aws.prod"
  bucket   = "${var.bucket_name}"
  acl      = "private"

  tags = {
    Environment = "stage"
  }

  policy = "${data.aws_iam_policy_document.example.json}"

  # policy = "${file("policy.json")}"
}

resource "aws_s3_bucket_object" "prod" {
  provider = "aws.prod"

  bucket = "${aws_s3_bucket.prod.id}"
  key    = "object-uploaded-via-prod-creds"
  source = "${path.module}/demo.log"
}
