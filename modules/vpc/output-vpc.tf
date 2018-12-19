######output-vpc.tf 
output "vpc_id" { 
	value = "${aws_vpc.cloud.id}" 
	}
output "proxy_subnet_id" {
	value = ["${aws_subnet.proxy_subnet.*.id}"] 
	}
output "client_tools_subnet_id" { 
	value = ["${aws_subnet.client_tools_subnet.*.id}"] 
	}
output "redshift_subnet_id" {
	value = ["${aws_subnet.private_redshift_subnet.*.id}"]
	} 
output "emr_subnet_id" { 
	value = ["${aws_subnet.private_emr_subnet.*.id}"] 
	} 
output "vpce_s3" { 
	value = "${aws_vpc_endpoint.s3.prefix_list_id}" 
	}