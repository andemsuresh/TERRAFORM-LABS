terraform apply -auto-approve
data.aws_ami.amazon-ami: Reading...
data.aws_ami.amazon-ami: Read complete after 1s [id=ami-01bb5fb90f6e8dc9d]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.webserver-instance will be created
  + resource "aws_instance" "webserver-instance" {
      + ami                                  = "ami-01bb5fb90f6e8dc9d"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = true
      + availability_zone                    = "eu-west-2a"
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
          + "Name"      = "single-webserver-instance"
          + "user_data" = <<-EOT
                                 #!/bin/bash
                                 yum update && yum install -y docker 
                                 systemctl start docker
                                 usermod -aG docker ec2-user
                                 docker run -p 8080:8080 nginx &
            EOT
        }
      + tags_all                             = {
          + "Name"      = "single-webserver-instance"
          + "user_data" = <<-EOT
                                 #!/bin/bash
                                 yum update && yum install -y docker 
                                 systemctl start docker
                                 usermod -aG docker ec2-user
                                 docker run -p 8080:8080 nginx &
            EOT
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

  # aws_internet_gateway.igw will be created
  + resource "aws_internet_gateway" "igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "single-webserver-igw"
        }
      + tags_all = {
          + "Name" = "single-webserver-igw"
        }
      + vpc_id   = (known after apply)
    }

  # aws_key_pair.webserver-key will be created
  + resource "aws_key_pair" "webserver-key" {
      + arn             = (known after apply)
      + fingerprint     = (known after apply)
      + id              = (known after apply)
      + key_name        = "webserver-key"
      + key_name_prefix = (known after apply)
      + key_pair_id     = (known after apply)
      + public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDaXN9iU4Fd+OKBXmZQdzj9eygYX0C9hjxYqJilStJ2mhJe9HtMCN8qnAZiu9qLZc+m6v40/Q5PIrmguHUECA2FweIRCPqYnEUY/hnaXofiND5BaEVtQlkLRJg9TKcutbF080Ys4pTLQ0RivS9RKgS5Z4NFcjhIF+ffA6viMoz3BarIuPi17z0o7Ojy7TJ3ibYOa2fCqviNBJJvjwv8eIJw5JNNvobx6//OTSrhwuivYPU0sYsPI0GxldlVBVMLAdA5GxrwArD7BN1WeEAoPa5Ai3HxwugM6GwwCXVVtbjFKUVXjmr58Tm/Ddw6YG7ZuVO09hl3ydZinXA6jGe73RHKFGbY4h6VLCHVkQkFYxo+Ma35WL3FJ4/AdI42moUpPhedCtyEYHMqX/Eip5bl0QylTNpkbTAjtrmwLNbPhs63PmQ2x84Hzb/734BkU1C2kAnMpo+g5g7STa/AewNlYzugQ9dVuSbahXdEOzTk5kZloKxJ/NDui18cPwGWZl2SoY0= sureshandem@Sureshs-MBP-2.broadband"
      + tags_all        = (known after apply)
    }

  # aws_route_table.rtb will be created
  + resource "aws_route_table" "rtb" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + carrier_gateway_id         = ""
              + cidr_block                 = "0.0.0.0/0"
              + core_network_arn           = ""
              + destination_prefix_list_id = ""
              + egress_only_gateway_id     = ""
              + gateway_id                 = (known after apply)
              + instance_id                = ""
              + ipv6_cidr_block            = ""
              + local_gateway_id           = ""
              + nat_gateway_id             = ""
              + network_interface_id       = ""
              + transit_gateway_id         = ""
              + vpc_endpoint_id            = ""
              + vpc_peering_connection_id  = ""
            },
        ]
      + tags             = {
          + "Name" = "single-webserver-rt"
        }
      + tags_all         = {
          + "Name" = "single-webserver-rt"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.asso-pub-sn will be created
  + resource "aws_route_table_association" "asso-pub-sn" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_security_group.webserver-sg will be created
  + resource "aws_security_group" "webserver-sg" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 8080
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 8080
            },
        ]
      + name                   = "single-webserver-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "single-webserver-sg"
        }
      + tags_all               = {
          + "Name" = "single-webserver-sg"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_subnet.pub-sn will be created
  + resource "aws_subnet" "pub-sn" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-west-2a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.0.0/24"
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
          + "Name" = "single-webserver-pub-sn"
        }
      + tags_all                                       = {
          + "Name" = "single-webserver-pub-sn"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.web-server-vpc will be created
  + resource "aws_vpc" "web-server-vpc" {
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
          + "Name" = "single-webserver-vpc"
        }
      + tags_all                             = {
          + "Name" = "single-webserver-vpc"
        }
    }

Plan: 8 to add, 0 to change, 0 to destroy.
aws_key_pair.webserver-key: Creating...
aws_vpc.web-server-vpc: Creating...
aws_key_pair.webserver-key: Creation complete after 0s [id=webserver-key]
aws_vpc.web-server-vpc: Creation complete after 1s [id=vpc-02a5da99502264916]
aws_internet_gateway.igw: Creating...
aws_subnet.pub-sn: Creating...
aws_security_group.webserver-sg: Creating...
aws_internet_gateway.igw: Creation complete after 0s [id=igw-0210e4b7a8002d9aa]
aws_subnet.pub-sn: Creation complete after 0s [id=subnet-0a1f53c96518f0d96]
aws_route_table.rtb: Creating...
aws_route_table.rtb: Creation complete after 1s [id=rtb-0ec93a6e59ad9aff3]
aws_route_table_association.asso-pub-sn: Creating...
aws_route_table_association.asso-pub-sn: Creation complete after 0s [id=rtbassoc-0653759dfa28accdb]
aws_security_group.webserver-sg: Creation complete after 2s [id=sg-0d68ccafd357a282e]
aws_instance.webserver-instance: Creating...
aws_instance.webserver-instance: Still creating... [10s elapsed]
aws_instance.webserver-instance: Still creating... [20s elapsed]
aws_instance.webserver-instance: Still creating... [30s elapsed]
aws_instance.webserver-instance: Still creating... [40s elapsed]
aws_instance.webserver-instance: Creation complete after 41s [id=i-041275b36b37ce5d3]

Apply complete! Resources: 8 added, 0 changed, 0 destroyed
