resource "aws_ecs_task_definition" "rails-kata-web-task" {
  family                = "rails-kata-web"
  container_definitions = file("./container_definitions/service.json")
  task_role_arn         = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  network_mode          = "bridge"
}

resource "aws_ecs_task_definition" "rails-kata-migration-task" {
  family                = "rails-kata-migration"
  container_definitions = file("./container_definitions/migration.json")
  task_role_arn         = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  network_mode          = "bridge"
}

resource "aws_ecs_task_definition" "rails-kata-delayed-job-task" {
  family                = "rails-kata-delayed-job"
  container_definitions = file("./container_definitions/delayed_job.json")
  task_role_arn         = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  network_mode          = "bridge"
}
