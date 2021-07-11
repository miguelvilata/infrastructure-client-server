###################
## DEPLOY REGION ##
###################
variable "region" {
  default = "eu-west-1"
}

########################
##INSTANCIA EC2 CONFIG##
########################
variable "instance_type" {
  description = "Instance Type from the jenkins"
  default     = "t3.small"
}

variable "monitoring" {
  description = "Apply monitoring detailed to 1 min"
  default     = "true"
}
variable "associate_public_ip_address" {
  description = "Attach public IP to the instance (true only if not apply Elastic IP)"
  default = "false"  
}
variable "source_dest_check" {
  description =  "Configure in false only where the instance working with VPN service"
  default     =  "true"
}

variable  "ebs_optimized" {
  default = "true" 
}
variable "ebs_root_size" {
  description = "Customize details about the root block device of the instance."
  default     = "10"
}

variable "dns_zone_id" {
  default = "Z00531613R4SJT0CLAZ4Q" 
}

variable "jenkins_userdata" {
  description = "File Script from configure instance"
  default     = "userdata_amz.tpl"
}

########
##TAGS##
########
variable "env" {
  description = "Environment type"
  default     = "dev"
}
variable "project" {
  description = "Project name"
  default     = "devops"
}
variable "creator" {
  description = "Deploymente by"
  default     = "DevOps Team"
}
variable "application" {
  description = "Deploymente by"
  default     = "client-server"
}
variable "terraform" {
  description = "Terraform Template"
  default     = "True"
}
