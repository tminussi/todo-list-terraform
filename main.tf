provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.aws_region}"
}


module "iam_roles" {
  source = "./iam_roles"
  environment = "${var.environment}"
}

module "cloud_formation_stack" {
  source = "./cloud_formation"
  environment = "${var.environment}"
  todo_list_role_arn = "${module.iam_roles.todo_list_role_arn}"
  todo_list_table = "${module.storage.todo_list_table}"
}

module "storage" {
  source = "./storage"
  environment = "${var.environment}"
}
