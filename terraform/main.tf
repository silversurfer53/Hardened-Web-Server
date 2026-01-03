# Security Group Definition (The Virtual Firewall)
resource "aws_security_group" "hardened_web_sg" {
  name        = "hardened-web-server-sg"
  description = "Block all ports except Web and SSH"

  # Inbound SSH (Port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Change to your IP for max security
  }

  # Inbound HTTP (Port 80)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound Traffic (Allow updates to download)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}