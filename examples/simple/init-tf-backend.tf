# Simple example 

module "tfbackend" {
  source  = "tf-mod/tfbackend/aws"
  version = "1.0.0"

  aws_account_id = var.aws_account_id
  bucket_name    = var.bucket_name
  dynamodb_table = var.dynamodb_table
}
