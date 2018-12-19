#### ####vpc-route-tables-and-association.tf #### #### 

resource "aws_route_table" "client_tools_rtb" {
	count 			= "${var.client_tools_rtb_count}" 
	propagating_vgws= ["${aws_vpn_gateway.ccs_vpn_gw.id}"]
	vpc_id 			= "${aws_vpc.cloud.id}" 
	tags {
		Name 			= 	"${var.client_tools_rtb_name}"
		resource-group 	= 	"VPC"
		application 	=	"${var.application}"
		owner 			= 	"${var.owner}"
		description 	=	"${var.application}-${var.environment}"
		environment 	=	"${var.environment_tag}"
		tag_builder 		= 	"${var.tag_builder}"
		}
}

resource "aws_route_table_association" "rta_client_tools" {
	count = "${length(split ("," , var.client_tools_cidr_block))}"
	subnet_id = "${element(aws_subnet.client_tools_subnet.*.id, count.index)}" 	
	route_table_id = "${aws_route_table.client_tools_rtb.id}" 
	}

### ROUTE TABLE REDSHIFT ## 

resource "aws_route_table" "private_redshift_rtb" {
	count 	= "${var.redshift_rtb_count}"
	propagating_vgws = ["${aws_vpn_gateway.ccs_vpn_gw.id}"]
	vpc_id 	= "${aws_vpc.cloud.id}" 
	tags {
		Name 		= "${var.redshift_rtb_name}" 
		resource-group = "VPC" 
		application = "${var.application}" 
		owner 		= "${var.owner}" 
		description	= "${var.application}-${var.environment}" 
		environment = "${var.environment_tag}"
		tag_builder 	= "${var.tag_builder}" 
		} 
}
resource "aws_route_table_association"  "rta_private_redshift" {
	count 			=	"${length(split(",", var.redshift_cidr_block))}" 
	subnet_id 		= "${element(aws_subnet.private_redshift_subnet.*.id, count.index)}" 
	route_table_id 	= "${aws_route_table.private_redshift_rtb.id}" 
	}
##ROUTE TABLE PROXY ### 
resource "aws_route_table" "proxy_rtb" {
	count 	= "${var.proxy_rtb_count}"
	propagating_vgws = ["${aws_vpn_gateway.ccs_vpn_gw.id}"]
	vpc_id 	= "${aws_vpc.cloud.id}" 
	tags {
		Name 		= "${var.proxy_rtb_name}" 
		resource-group = "VPC" 
		application = "${var.application}" 
		owner 		= "${var.owner}" 
		description	= "${var.application}-${var.environment}" 
		environment = "${var.environment_tag}"
		tag_builder 	= "${var.tag_builder}" 
		} 
}
resource "aws_route_table_association"  "rta_proxy" {
	count 			=	"${length(split(",", var.proxy_cidr_block))}" 
	subnet_id 		= "${element(aws_subnet.proxy_subnet.*.id, count.index)}" 
	route_table_id 	= "${aws_route_table.proxy_rtb.id}" 
	}
##ROUTE TABLE EMR ### 
resource "aws_route_table" "private_emr_rtb" {
	count 	= "${var.emr_rtb_count}"
	propagating_vgws = ["${aws_vpn_gateway.ccs_vpn_gw.id}"]
	vpc_id 	= "${aws_vpc.cloud.id}" 
	tags {
		Name 		= "${var.emr_rtb_name}" 
		resource-group = "VPC" 
		application = "${var.application}" 
		owner 		= "${var.owner}" 
		description	= "${var.application}-${var.environment}" 
		environment = "${var.environment_tag}"
		tag_builder 	= "${var.tag_builder}" 
		}
}
resource "aws_route_table_association"  "rta_private_emr" {
	count 			=	"${length(split(",", var.emr_cidr_block))}" 
	subnet_id 		= "${element(aws_subnet.private_emr_subnet.*.id, count.index)}" 
	route_table_id 	= "${aws_route_table.private_emr_rtb.id}" 
	}