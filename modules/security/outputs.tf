output "docker_agent_sg_id" {
  description = "ID of the Docker Agent security group."
  value       = aws_security_group.docker-agent-sg.id
}

output "openvpn_access_server_sg_id" {
  description = "ID of the OpenVPN Access Server security group."
  value       = aws_security_group.openvpn-access-server-sg.id
}

output "papyrus_app_sg_id" {
  description = "ID of the Papyrus App security group."
  value       = aws_security_group.papyrus-app-sg.id
}

output "portainer_srvs_sg_id" {
  description = "ID of the Portainer Srvs security group."
  value       = aws_security_group.portainer-srvs.id
}

output "postgres_sg_id" {
  description = "ID of the Postgres security group."
  value       = aws_security_group.postgres-sg.id
}

output "private_ssh_sg_id" {
  description = "ID of the Private SSH security group."
  value       = aws_security_group.private-ssh-sg.id
}

output "sonarqube_sg_id" {
  description = "ID of the SonarQube security group."
  value       = aws_security_group.sonarqube-sg.id
}

output "webaccess_sg_id" {
  description = "ID of the WebAccess security group."
  value       = aws_security_group.webaccess-sg.id
}
