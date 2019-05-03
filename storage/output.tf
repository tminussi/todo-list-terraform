output "todo_list_table" {
  value = "${aws_dynamodb_table.todo_list_table.name}"
}
