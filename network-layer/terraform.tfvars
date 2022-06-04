region  = "eu-west-2"
profile = "SURESH AWS"
#vpc-tag = "Exercise"
vpc-tag = "Exercise"
cidr_block = ["10.0.0.0/16", "10.0.1.0/20" ]
pub-sn = data.aws_vpc.Exercise-vpc.id