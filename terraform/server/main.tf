resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.key_pair_george.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_http.id, aws_security_group.allow_https.id, aws_security_group.allow_tls.id]

  tags = {
    Name      = "George Tunnel"
    CreatedBy = "Terraform"
  }
}
