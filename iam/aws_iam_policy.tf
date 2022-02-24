resource "aws_iam_policy" "rails-kata-deploy" {
  name = "rails-kata-deploy"
  policy = file("aws_iam_policies/ecr_policy.json")
}
