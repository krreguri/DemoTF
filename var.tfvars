########### var-vpc.tf #####
region = "us-east-1"
country = "US"
environment = "Dev"
application = "ccs"
owner = "RKR"
environment_tag = "dev"
azs = "us-east-1a,us-east-1b" 
hsbc_account = "9866252654"
tag_builder = "Pre" 
tag_project = "ccs"
description = "TestProject"

###### #VPC ############################ 
vpc_cidr_block = "10.0.0.0/16"
vpc_name = "TestVPC"
proxy_subnet_name= "proxy_subnet_1a,proxy_subnet_1b" 
proxy_cidr_block = "10.0.0.0/28,10.0.0.16/28" 
proxy_rtb_count = "1" 
proxy_rtb_name = "Proxy_subnet_rtb"
redshift_subnet_name = "Redshift_subnet_1a,Redshift_subnet_1b" 
redshift_cidr_block = "10.0.0.32/28,10.0.0.48/28" 
redshift_rtb_name = "Redshift_rtb" 
redshift_rtb_count = "1" 
client_tools_subnet_name = "client_tools_subnet_1a,client_tools_subnet_1b" 
client_tools_cidr_block = "10.0.0.64/28,10.0.0.80/28" 
client_tools_rtb_count = "1"
client_tools_rtb_name = "client_tools_rtb"

emr_subnet_name = "emr_subnet_1a,emr_subnet_1b"
emr_cidr_block =  "10.0.0.96/28,10.0.0.112/28" 
emr_rtb_count ="1" 
emr_rtb_name = "emr_rtb"

/* 
elb_logging = ""
s3_kms_arn = ""
devopsteam_role_id = ""
readonly_role_id = ""
cluster_identifier = ""
dns_server_1 = ""
dns_server_2 = ""
dns_server_3 = "" 
peer_owner_id = ""
peer_vpc_id = ""
peer_vpc_cidr = ""
*/