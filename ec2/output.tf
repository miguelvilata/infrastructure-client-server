output "jenkins_id" {
  value = aws_instance.jenkins.id
}
output "jenkins_public_ip" {
  value = aws_eip.eip_jenkins.id
}
output "dns_cname" {
  value = aws_route53_record.jenkins.name
}

output "jenkins_sg" {
  value = aws_security_group.jenkins.name
}

