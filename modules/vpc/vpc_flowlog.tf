#####    vpc-flowlog.tf    ####

resource "aws_flow_log" "ccs_flow_log" {
	log_group_name	= "${aws_cloudwatch_log_group.q9ccs-pre-prod.name}" 
	iam_role_arn 	= "${aws_iam_role.flow_logs.arn}" 
	vpc_id 			= "${aws_vpc.cloud.id}" 
	traffic_type 	= "ALL" 
	}
	
resource "aws_cloudwatch_log_group" "q9ccs-pre-prod" {
		name = "g9ccs-pre-prod" 
}


resource "aws_iam_role" "flow_logs" {
  name = "g9ccs-vpc-flowrole"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
	  "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

  }


