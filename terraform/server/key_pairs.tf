resource "tls_private_key" "tls_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair_george" {
  key_name   = "my_secret_key"
  public_key = tls_private_key.tls_key.public_key_openssh
}
