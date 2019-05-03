resource "aws_dynamodb_table" "todo_list_table" {
    name = "${var.environment}-todo-list"
    hash_key = "id"
    read_capacity = 5
    write_capacity = 5
    attribute = {
        name = "id"
        type = "S"
    }
}
