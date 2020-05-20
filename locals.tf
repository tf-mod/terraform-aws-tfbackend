locals {
    arn_prefix = format("arn:%s", lookup(var.tfbackends_opt, "account_code", "aws"))
}
