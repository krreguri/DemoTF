## S3-endpoint.tf ######## 
resource "aws_vpc_endpoint" "s3" {
	vpc_id 			=	"${aws_vpc.cloud.id}" 
	service_name 	=	"com.amazonaws.${var.region}.s3" 
	route_table_ids = 	["${aws_route_table.proxy_rtb.id}", "${aws_route_table.private_redshift_rtb.id}",  "${aws_route_table.client_tools_rtb.id}", "${aws_route_table.private_emr_rtb.id}"]
	policy 			= 	"${data.aws_iam_policy_document.vpc_endpoint.json}"
}	

data "aws_iam_policy_document" "vpc_endpoint" {
	statement {
		actions = [
			"s3:List*",
			"s3:GetObject", 
			"s3:PutObject", 
			]
			resources 	= ["*"] 
			effect 		= "Allow" 
			principals = {
				type 		=	"AWS" 
				identifiers	= 	["*"]
		}
	}
}