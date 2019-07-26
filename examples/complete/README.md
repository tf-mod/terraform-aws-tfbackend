# Full example of terraform remote backend module for aws

## Usage
Please see the `init-tf-backend.tf` file for detail code.

```
module "tfbackend" {
  source = "tf-mod/tfbackend/aws"
  version = "1.0.0"

  aws_account_id          = "${var.aws_account_id}"
  bucket_name             = "${var.bucket_name}"
  dynamodb_table          = "${var.dynamodb_table}"
  dynamodb_read_capacity  = "10"
  dynamodb_write_capacity = "10"
}
```

And if you want change the parameters of this example with your own environment, you can edit terraform file (`init-tf-backend.tf`) directly or update the variables in `terraform.tfvars` file.

```
aws_account_id          = "859086152267"
aws_region              = "ap-northeast-2"
aws_profile             = "my"
bucket_name             = "my-terraform-state"
dynamodb_table          = "my-terraform-lock"
dynamodb_read_capacity  = "10"
dynamodb_write_capacity = "10"
```
