resource "aws_iam_role" "todo_list_role" {
    assume_role_policy = "${data.template_file.assume_role_template.template}"
    name = "${var.environment}-todo_list_role"
}
