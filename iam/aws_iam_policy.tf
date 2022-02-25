resource "aws_iam_policy" "rails-kata-deploy" {
  name   = "rails-kata-deploy"
  policy = file("aws_iam_policies/ecr_policy.json")
}

resource "aws_iam_policy" "ecs_instance_policy" {
  name   = "rails-kata-ecs-instance-policy"
  policy = file("aws_iam_policies/ecs_instance_policy.json")
}
