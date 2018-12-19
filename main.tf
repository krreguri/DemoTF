provider "aws" {
  access_key = "AKIAIQSWECEEJN4SUACA"
  secret_key = "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"
  region     = "us-east-1"
  #profile	= "saml"
}

#resource "aws_vpc" "main" {
#  cidr_block  = "10.0.0.0/16"
#  tags {
#         Name = "main"
#       }
#}

module "vpc" {
	source 	=	"./modules/vpc"
	
	region					=	"${var.region}"
	country					=	"${var.country}"
	environment_tag			=	"${var.environment_tag}"
	hsbc_account			=	"${var.hsbc_account}"
	tag_builder				=	"${var.tag_builder}"
	tag_project				=	"${var.tag_project}"
	vpc_cidr_block			=	"${var.vpc_cidr_block}"
	vpc_name				=	"${var.vpc_name}"
	application				=	"${var.application}"
	owner					=	"${var.owner}"
	description				=	"${var.description}"
	environment				=	"${var.environment}"
	
	
	azs						=	"${var.azs}"
	client_tools_subnet_name=	"${var.client_tools_subnet_name}"
	client_tools_cidr_block	=	"${var.client_tools_cidr_block}"
	client_tools_rtb_name 	=	"${var.client_tools_rtb_name}"
	client_tools_rtb_count	=	"${var.client_tools_rtb_count}"
	
	redshift_rtb_count		=	"${var.redshift_rtb_count}"
	redshift_rtb_name		=	"${var.redshift_rtb_name}"
	redshift_subnet_name	=	"${var.redshift_subnet_name}"
	redshift_cidr_block		=	"${var.redshift_cidr_block}"
	
	proxy_subnet_name		=	"${var.proxy_subnet_name}"
	proxy_cidr_block		=	"${var.proxy_cidr_block}"
	proxy_rtb_name			=   "${var.proxy_rtb_name}"
	proxy_rtb_count			=   "${var.proxy_rtb_count}"
	#peer_vpc_cidr			=	"${var.peer_vpc_cidr}"
	
	emr_subnet_name 		= 	"${var.emr_subnet_name}"
	emr_cidr_block 			=  	"${var.emr_cidr_block}"
	emr_rtb_count 			=	"${var.emr_rtb_count}"
	emr_rtb_name 			= 	"${var.emr_subnet_name}"
}