resource "aws_iam_user" "name" {
  name="harishu"
  tags= {
              "AKIATRWOJFGHD3E6G5EZ": "harishuaksak"
            }
  permissions_boundary = "arn:aws:iam::aws:policy/AdministratorAccess"
}