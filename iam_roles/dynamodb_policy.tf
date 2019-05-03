resource "aws_iam_role_policy_attachment" "dynamodbfullaccess" {
    role = "${aws_iam_role.todo_list_role.name}"
    policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}
