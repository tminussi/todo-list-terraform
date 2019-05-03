data "template_file" "assume_role_template" {
    template = "${file("${path.module}/lambda_assume_role.json")}"
}
