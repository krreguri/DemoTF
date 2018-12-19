####vpc-peering.tf ###### Stil1 has error 
/*
resource "aws_vpc_peering_connection" "ccs_peering" {
peer_owner_id = "${var.peer_owner_id}" 
peer_vpc_id = "${var.peer_vpc_id}" 
vpc_id = "${aws_vpc.cloud.id}" 
requester {
	allow_remote_vpc_dns_resolution = true 
	}
	tags {
		Name "${var.application}-${var.environment}- VPC-Peering" 
		resource-group = "VPC" 
		application = "${var.application}" owner ="${var.owner}" 
		description = "${var.application}-${var.environment}" 
		environment = "${var.environment_tag}" 
		builder = "${var.tag_builder}"
		}
	}
		*/