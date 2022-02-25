resource "aws_ecs_service" "rails-kata-web-service" {
  name            = "rails-kata-web-service"
  cluster         = aws_ecs_cluster.rails-kata-ecs-cluster.id
  task_definition = aws_ecs_task_definition.rails-kata-web-task.arn
  desired_count   = 1
  launch_type     = "EC2"

  load_balancer {
    target_group_arn = aws_lb_target_group.http.arn
    container_name   = "rails-kata-web"
    container_port   = "3000"
  }
}
