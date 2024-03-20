resource "aws_instance" "hello_world" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  security_groups        = var.security_groups

  user_data = file("${path.module}/install_wordpress.sh")

  tags = {
    Name = "WordpressInstanceWithModules"
  }
}
