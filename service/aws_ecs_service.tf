resource "aws_ecs_service" "rails-kata-web-service" {
  name            = "rails-kata-web-service"
  cluster         = aws_ecs_cluster.rails-kata-ecs-cluster.id
  task_definition = aws_ecs_task_definition.rails-kata-web-task.arn
  desired_count   = 1
  launch_type     = "EC2"
}
