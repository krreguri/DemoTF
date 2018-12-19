#########Subnet.tf  #### 

resource "aws_subnet" "client_tools_subnet" {
	vpc_id 				= "${aws_vpc.cloud.id}" 
	cidr_block 			= "${element(split(",", var.client_tools_cidr_block), count.index)}" 
	availability_zone 	= "${element(split(",", var.azs), count.index)} " 
	count 				= "${length(split(",", var.client_tools_cidr_block)) }" 
	tags {
		Name 			= "${element(split(",", var.client_tools_subnet_name), count.index)}" 
		resource-group 	= "VPC" 
		application 	= "${var.application}" 
		owner 			= "${var.owner}" 
		description 	= "${var.application}-${var.environment}" 
		environment 	= "${var.environment_tag}" 
		tag_builder 		= "${var.tag_builder}" 
		 }
}		

resource "aws_subnet" "private_emr_subnet" {
	vpc_id 				= "${aws_vpc.cloud.id}" 
	cidr_block 			= "${element(split(",", var.emr_cidr_block), count.index)}" 
	availability_zone 	= "${element(split(",", var.azs), count.index)} " 
	count 				= "${length(split(",", var.emr_cidr_block)) }" 
	tags {
	Name 			= "${element(split(",", var.emr_subnet_name), count.index)}" 
		resource-group 	= "VPC" 
		application 	= "${var.application}" 
		owner 			= "${var.owner}" 
		description 	= "${var.application}-${var.environment}" 
		environment 	= "${var.environment_tag}" 
		tag_builder 		= "${var.tag_builder}" 
		 }
}

resource "aws_subnet" "proxy_subnet" {
	vpc_id 				= "${aws_vpc.cloud.id}" 
	cidr_block 			= "${element(split(",", var.proxy_cidr_block), count.index)}" 
	availability_zone 	= "${element(split(",", var.azs), count.index)} " 
	count 				= "${length(split(",", var.proxy_cidr_block)) }" 
	tags {
	Name 			= "${element(split(",", var.proxy_subnet_name), count.index)}" 
		resource-group 	= "VPC" 
		application 	= "${var.application}" 
		owner 			= "${var.owner}" 
		description 	= "${var.application}-${var.environment}" 
		environment 	= "${var.environment_tag}" 
		tag_builder 		= "${var.tag_builder}"
		 }
}	

resource "aws_subnet" "private_redshift_subnet" {
	vpc_id 				= "${aws_vpc.cloud.id}" 
	cidr_block 			= "${element(split(",", var.redshift_cidr_block), count.index)}" 
	availability_zone 	= "${element(split(",", var.azs), count.index)} " 
	count 				= "${length(split(",", var.redshift_cidr_block)) }" 
	tags {
	Name 			= "${element(split(",", var.redshift_subnet_name), count.index)}" 
		resource-group 	= "VPC" 
		application 	= "${var.application}" 
		owner 			= "${var.owner}" 
		description 	= "${var.application}-${var.environment}" 
		environment 	= "${var.environment_tag}" 
		tag_builder 		= "${var.tag_builder}"
		 }
}