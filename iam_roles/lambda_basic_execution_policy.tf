resource "aws_iam_role_policy_attachment" "lambda_basic_execution_policy" {
    role = "${aws_iam_role.todo_list_role.name}"
    policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
