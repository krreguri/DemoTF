########### vpc-route-table-entries.tf ########### 
	/*
resource "aws_route" "vpc_peer_proxy_rte" {
	count	=	"${var.proxy_rtb_count}" 
	route_table_id	=	"${aws_route_table.proxy_rtb.id}" 
	destination_cidr_block = "${var.peer_vpc_cidr}" 
	vpc_peering_connection_id = "${aws_vpc_peering_connection.ccs_peering.id}"
	}

resource "aws_route" "vpc_peer_client_tools_rte" {
	count 			= "${var.client_tools_rtb_count}" 
	route_table_id 	= "${aws_route_table.client tools rtb.id}"
	destination_cidr_block = "${var.peer_vpc_cidr}" 
	vpc_peering_connection_id = "${aws_vpc_peering_connection.ccs_peering.id}" 
	}

resource "aws_route" "vpc_peer_redshift_rte" {
	count = "${var.redshift_rtb_count}" 
	route_table_id =	"${aws_route_table.private_redshift_rtb.id}" 
	destination_cidr_block =	"${var.peer_vpc_cidr}" 
	vpc_peering_connection_id = "${aws_vpc_peering_connection.ccs_peering.id}" 
	}
	
resource "aws_route" "vpc_peer_emr_rte" {
	count =	"${var.emr_rtb_count}" 
	route_table_id = "${aws_route_table.private_emr_rtb.id}" 
	destination_cidr_block = "${var.peer_vpc_cidr}"
	vpc_peering_connection_id = "${aws_vpc_peering_connection.ccs_peering.id}"
	}
		*/