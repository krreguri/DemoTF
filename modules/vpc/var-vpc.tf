########### var-vpc.tf #####
variable region {} 
variable country {}
variable environment {}
variable application {}
variable owner {}
variable environment_tag {}
variable azs {} 
variable hsbc_account {}
#variable tag_builder {} 
variable tag_project {}
variable tag_builder {}
variable description {}

###### #VPC ############################ 
variable vpc_cidr_block {}
variable vpc_name {}
variable proxy_subnet_name{} 
variable proxy_cidr_block {} 
variable proxy_rtb_count {} 
variable proxy_rtb_name {}

variable redshift_subnet_name {} 
variable redshift_cidr_block {} 
variable redshift_rtb_name {} 
variable redshift_rtb_count {} 

variable client_tools_subnet_name {} 
variable client_tools_cidr_block {} 
variable client_tools_rtb_count {}
variable client_tools_rtb_name {}

variable emr_subnet_name{} 
variable emr_cidr_block {} 
variable emr_rtb_count {} 
variable emr_rtb_name {}

/* 
variable elb_logging {}
variable s3_kms_arn {}
variable devopsteam_role_id {}
variable readonly_role_id {}
variable cluster_identifier {}
variable dns_server_1 {}
variable dns_server_2 {}
variable dns_server_3 {} 

variable peer_owner_id {}
variable peer_vpc_id {}
variable peer_vpc_cidr {}
*/
