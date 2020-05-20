# Complete example 

module "tfbackend" {
  source  = "tf-mod/tfbackend/aws"
  version = "1.0.0"

  aws_account_id          = var.aws_account_id
  bucket_name             = var.bucket_name
  dynamodb_table          = var.dynamodb_table
  dynamodb_read_capacity  = "10"
  dynamodb_write_capacity = "10"
}
