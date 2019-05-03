resource "aws_cloudformation_stack" "todo_list_outputs" {
  name = "${var.environment}-todo-list-outputs"

  template_body = <<STACK
{
  "Resources" : {
    "TodoList" : {
      "Type" : "AWS::SQS::Queue",
      "Properties" : {
         "QueueName" : "TodoList"
      }
    }
  },
  "Outputs" : {
    "QueueURL" : {
      "Description" : "URL of TodoList",
      "Value" : { "Ref" : "TodoList" }
    },
    "QueueARN" : {
      "Description" : "ARN of TodoList",
      "Value" : { "Fn::GetAtt" : ["TodoList", "Arn"]}
    },
    "QueueName" : {
      "Description" : "TodoList's Queue Name",
      "Value" : { "Fn::GetAtt" : ["TodoList", "QueueName"]}
    },
    "RoleARN": {
      "Description": "Registration Role ARN",
      "Value": "${var.todo_list_role_arn}"
    },
    "TodoListTableName": {
      "Description": "Table for TodoList",
      "Value": "${var.todo_list_table}"
    }
  }
}
STACK
}