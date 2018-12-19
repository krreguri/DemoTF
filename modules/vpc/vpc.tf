######VPC.tf####### 

resource "aws_vpc" "cloud" {
	cidr_block 	=	"${var.vpc_cidr_block}"
	enable_dns_hostnames = true 
	enable_dns_support = true 
	tags {
		Name 		=	"${var.vpc_name}" 
		resource-group = "VPC" 
		application = "${var.application}"
		owner 		=	"${var.owner}" 
		description =	"${var.application}-${var.environment}" 
		environment =	"${var.environment}" 
		tag_builder 	=	"${var.tag_builder}" 
		}
	lifecycle {
		create_before_destroy = true 
		prevent_destroy = false 
				}	
		}

		
		###VPN GATEWAY ### 
resource "aws_vpn_gateway" "ccs_vpn_gw" {
	vpc_id = "${aws_vpc.cloud.id}" 
	tags {
		Name = "${var.environment}-${var.application}-vgw"
		application = "${var.application}" 
		owner =	"${var.owner}"
		description = "${var.application} - ${var.environment}" 
		environment = "${var.environment_tag}" 
		tag_builder = "${var.tag_builder}" 
		}
	}

resource "aws_vpc_gateway_attachment" "vpn_attachment" {
	vpc_id =	"${aws_vpc.cloud.id}"
	vpn_gateway_id = 	"${aws_vpn_gateway.ccs_vpn_gw.id}"
	}