variable "aws_region" {
  type        = string
  description = "aws-region"

}

variable "aws_profile" {
  type        = string
  description = "aws-profile"

}
variable "cidr-blocks" {
  type        = list(string)
  description = "cidr blocks for vpc and subnets"


}
variable "tag" {
  type        = string
  description = "tags for this project"

}
variable "AZ-zones" {
  type = list(string)

}
