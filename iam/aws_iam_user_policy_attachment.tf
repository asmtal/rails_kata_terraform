resource "aws_iam_user_policy_attachment" "rails-kata-deploy-attach" {
  user       = aws_iam_user.rails-kata-deploy-user.name
  policy_arn = aws_iam_policy.rails-kata-deploy.arn
}
