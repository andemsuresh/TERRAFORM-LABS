# TERRAFORM-LABS
ALL EXERCISE LABS

firstly i have created two folders
Terraform will perform the following actions:

  # aws_vpc.Exercise-vpc will be created
  + resource "aws_vpc" "Exercise-vpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "Exercise-vpc"
        }
      + tags_all                             = {
          + "Name" = "Exercise-vpc"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + vpc-id = (known after apply)
aws_vpc.Exercise-vpc: Creating...
aws_vpc.Exercise-vpc: Creation complete after 1s [id=vpc-0af4696ca078fcdf7]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

vpc-id = "vpc-0af4696ca078fcdf7"





Terraform will perform the following actions:

  # aws_instance.Exercise-instance will be created
  + resource "aws_instance" "Exercise-instance" {
      + ami                                  = "ami-01bb5fb90f6e8dc9d"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "Exercise-instance"
        }
      + tags_all                             = {
          + "Name" = "Exercise-instance"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id                 = (known after apply)
              + capacity_reservation_resource_group_arn = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + maintenance_options {
          + auto_recovery = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
          + instance_metadata_tags      = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_card_index    = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_subnet.pub-sn will be created
  + resource "aws_subnet" "pub-sn" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.3.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "Exercise-pub-sn"
        }
      + tags_all                                       = {
          + "Name" = "Exercise-pub-sn"
        }
      + vpc_id                                         = "vpc-0af4696ca078fcdf7"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + ami-id            = "ami-01bb5fb90f6e8dc9d"
  + ami_creation_date = "2022-04-28T21:39:50.000Z"
  + ami_name          = "amzn2-ami-hvm-2.0.20220426.0-x86_64-gp2"
  + ami_owner-id      = "137112412989"
  + subnet-id         = (known after apply)
  + vpc-id            = "733263127578"
  + vpc-name          = "arn:aws:ec2:eu-west-2:733263127578:vpc/vpc-0af4696ca078fcdf7"
aws_subnet.pub-sn: Creating...
aws_subnet.pub-sn: Creation complete after 1s [id=subnet-0373f13c8cb44a09f]
aws_instance.Exercise-instance: Creating...
aws_instance.Exercise-instance: Still creating... [10s elapsed]
aws_instance.Exercise-instance: Still creating... [20s elapsed]
aws_instance.Exercise-instance: Still creating... [30s elapsed]
aws_instance.Exercise-instance: Creation complete after 31s [id=i-0fef5c532ad176565]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

ami-id = "ami-01bb5fb90f6e8dc9d"
ami_creation_date = "2022-04-28T21:39:50.000Z"
ami_name = "amzn2-ami-hvm-2.0.20220426.0-x86_64-gp2"
ami_owner-id = "137112412989"
subnet-id = "subnet-0373f13c8cb44a09f"
vpc-id = "733263127578"
vpc-name = "arn:aws:ec2:eu-west-2:733263127578:vpc/vpc-0af4696ca078fcdf7"
