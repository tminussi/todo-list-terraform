output "todo_list_role_arn" {
  value = "${module.iam_roles.todo_list_role_arn}"
}

output "todo_list_table" {
  value = "${module.storage.todo_list_table}"
}
