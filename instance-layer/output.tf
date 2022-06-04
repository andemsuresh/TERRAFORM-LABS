
output "ami-id" {
  value = data.aws_ami.amazon-ami.id

}
output "ami_owner-id" {
  value = data.aws_ami.amazon-ami.owner_id

}
output "ami_creation_date" {
  value = data.aws_ami.amazon-ami.creation_date
}
output "ami_name" {
  value = data.aws_ami.amazon-ami.name

}

output "vpc-state" {
  value = data.aws_vpc.exercise-vpc.state
  
}
output "vpc-id" {
  value = data.aws_vpc.exercise-vpc.owner_id
  
}
output "vpc-name" {
  value = data.aws_vpc.exercise-vpc.arn
  
}
output "subnet-id" {
  value = aws_subnet.pub-sn.id 
  
}