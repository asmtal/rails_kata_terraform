data "aws_vpc" "target_vpc" {
  default = true
}

resource "aws_security_group" "db" {
  name        = "public-db-access"
  description = "DB"
  vpc_id      = data.aws_vpc.target_vpc.id

  ingress {
    from_port = 5432
    to_port   = 5432
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
