resource "aws_security_group" "docker-agent-sg" {
  description = "Allows Port 9001 to Portainer connect to the server"
  name        = "docker-agent-sg"
  region      = var.aws_region
  vpc_id      = var.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port       = 9001
    protocol        = "tcp"
    security_groups = ["${aws_security_group.portainer-srvs.id}"]
    to_port         = 9001
  }

  tags = {
    Name = "docker-agent-sg"
  }

  tags_all = {
    Name = "docker-agent-sg"
  }
}

resource "aws_security_group" "openvpn-access-server-sg" {
  description = "OpenVPN Access Server"
  name        = "openvpn-access-server-sg"
  region      = var.aws_region
  vpc_id      = var.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 1194
    protocol    = "udp"
    to_port     = 1194
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 943
    protocol    = "tcp"
    to_port     = 943
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 945
    protocol    = "tcp"
    to_port     = 945
  }

  tags = {
    Name = "openvpn-access-server-sg"
  }
}

resource "aws_security_group" "papyrus-app-sg" {
  description = "Allows servers to reach each other"
  name        = "papyrus-app-sg"
  region      = var.aws_region
  vpc_id      = var.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = [var.vpc_internal_cidr]
    description = "Papyrus API 1"
    from_port   = 32768
    protocol    = "tcp"
    to_port     = 32768
  }

  ingress {
    cidr_blocks = [var.vpc_internal_cidr]
    description = "Papyrus API 2"
    from_port   = 5297
    protocol    = "tcp"
    to_port     = 5297
  }

  ingress {
    cidr_blocks = [var.vpc_internal_cidr]
    description = "Papyrus Web 1"
    from_port   = 32780
    protocol    = "tcp"
    to_port     = 32780
  }

  ingress {
    cidr_blocks = [var.vpc_internal_cidr]
    description = "Papyrus Web 2"
    from_port   = 5024
    protocol    = "tcp"
    to_port     = 5024
  }

  tags = {
    Name = "papyrus-app-sg"
  }

  tags_all = {
    Name = "papyrus-app-sg"
  }
}

resource "aws_security_group" "portainer-srvs" {
  description = "Portainer Servers"
  name        = "portainer-srvs"
  region      = var.aws_region
  vpc_id      = var.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = [var.vpc_internal_cidr]
    description = "Internal Network"
    from_port   = 9443
    protocol    = "tcp"
    to_port     = 9443
  }

  tags = {
    Name = "portainer-srvs"
  }

  tags_all = {
    Name = "portainer-srvs"
  }
}

resource "aws_security_group" "postgres-sg" {
  description = "Allows Postgres connection"
  name        = "postgres-sg"
  region      = var.aws_region
  vpc_id      = var.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = [var.vpc_internal_cidr]
    description = "Internal network"
    from_port   = 5432
    protocol    = "tcp"
    to_port     = 5432
  }

  ingress {
    description     = "Papyrus Servers"
    from_port       = 5432
    protocol        = "tcp"
    security_groups = ["${aws_security_group.papyrus-app-sg.id}"]
    to_port         = 5432
  }


  tags = {
    Name = "postgres-sg"
  }

  tags_all = {
    Name = "postgres-sg"
  }

}

resource "aws_security_group" "private-ssh-sg" {
  description = "Allow SSH Access by VPN"
  name        = "private-ssh-sg"
  region      = var.aws_region
  vpc_id      = var.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = [var.vpc_internal_cidr]
    description = "Private network"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  tags = {
    Name = "private-ssh-sg"
  }
}


resource "aws_security_group" "sonarqube-sg" {
  description = "Allows Sonarqube access"
  name        = "sonarqube-sg"
  region      = var.aws_region
  vpc_id      = var.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = [var.vpc_internal_cidr]
    description = "Private network"
    from_port   = 9000
    protocol    = "tcp"
    to_port     = 9000
  }

  tags = {
    Name = "sonarqube-sg"
  }
}

resource "aws_security_group" "webaccess-sg" {
  description = "Allows HTTP and HTTPS access from everyone"
  name        = "webaccess-sg"
  region      = var.aws_region
  vpc_id      = var.vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = 443
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    to_port          = 443
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = 80
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    to_port          = 80
  }

  tags = {
    Name = "webaccess-sg"
  }

  tags_all = {
    Name = "webaccess-sg"
  }
}
