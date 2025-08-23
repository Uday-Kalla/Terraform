# Project Steps

## Step 01: Check the configuration

- Check `Terraform` installed or not if not installed then  install `Terraform`.
- Check `AWS` installed or not, If not installed then install `AWS`.
- configure aws using following command:
  - aws configure

```bash
PS E:\aws\VS Code\Terraform> aws configure
AWS Access Key ID [****************IOUG]: 
AWS Secret Access Key [****************rVp8]: 
Default region name [us-east-1]: 
Default output format [json]: 
PS E:\aws\VS Code\Terraform> 
```

## Step 02: Create a directory

Create a directory for your Terraform project and create a Terraform configuration file (usually named main.tf) in that directory. In this file, you define the AWS provider and resources you want to create.

Here's a basic example:

```hcl
   provider "aws" {
     region = "us-east-1"  # Set your desired AWS region
   }

   resource "aws_instance" "example" {
     ami           = "ami-0c55b159cbfafe1f0"  # Specify an appropriate AMI ID
     instance_type = "t2.micro"
   }
```

## Step 03: Initialize Terraform (Terraform init)

- It sets up the working directory by downloading the required providers (like AWS, Azure, GCP), installing modules, and getting everything ready to run Terraform commands.

```bash
PS E:\aws\VS Code\Terraform\01\PROJECT-ec2-instance-creation> terraform init
Initializing the backend...
Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.10.0...
- Installed hashicorp/aws v6.10.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## Step 04: Terraform plan

- `terraform plan` shows you what changes Terraform will make before actually applying them. It compares your configuration files with the current state and gives a preview of resources to be created, updated, or destroyed.

```bash
PS E:\aws\VS Code\Terraform\01\PROJECT-ec2-instance-creation> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
      + ami                                  = "ami-0360c520857e3138f"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + force_destroy                        = false
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
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
      + region                               = "us-east-1"
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + primary_network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────
```

## Step 05: Terraform apply

- terraform apply actually makes the changes to your cloud. It takes the plan created by Terraform, then creates, updates, or deletes resources so that your real infrastructure matches your code.

```bash
PS E:\aws\VS Code\Terraform\01\PROJECT-ec2-instance-creation> terraform apply

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
      + ami                                  = "ami-0360c520857e3138f"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + force_destroy                        = false
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
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
      + region                               = "us-east-1"
      + secondary_private_ips                = (known after apply)        
      + security_groups                      = (known after apply)        
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)        
      + subnet_id                            = (known after apply)        
      + tags_all                             = (known after apply)        
      + tenancy                              = (known after apply)        
      + user_data_base64                     = (known after apply)        
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)        

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + primary_network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.example: Creating...
aws_instance.example: Still creating... [00m10s elapsed]
aws_instance.example: Creation complete after 19s [id=i-00140e8047451213a]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

## Step 06: Terraform destroy

- terraform destroy removes all the resources that Terraform created, tearing down the infrastructure defined in your code.

```bash
PS E:\aws\VS Code\Terraform\01\PROJECT-ec2-instance-creation> terraform destroy
aws_instance.example: Refreshing state... [id=i-00140e8047451213a]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:    
  - destroy

Terraform will perform the following actions:

  # aws_instance.example will be destroyed
  - resource "aws_instance" "example" {
      - ami                                  = "ami-0360c520857e3138f" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:595673262064:instance/i-00140e8047451213a" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1c" -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - force_destroy                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-00140e8047451213a" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-042f90765fecbca04" -> null
      - private_dns                          = "ip-172-31-21-243.ec2.internal" -> null
      - private_ip                           = "172.31.21.243" -> null
      - public_dns                           = "ec2-34-201-69-171.compute-1.amazonaws.com" -> null
      - public_ip                            = "34.201.69.171" -> null
      - region                               = "us-east-1" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-08cef27c5f9e370b9" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0938def56264d7770",
        ] -> null
        # (8 unchanged attributes hidden)

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
            # (1 unchanged attribute hidden)
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 2 -> null
          - http_tokens                 = "required" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - primary_network_interface {
          - delete_on_termination = true -> null
          - network_interface_id  = "eni-042f90765fecbca04" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 3000 -> null
          - tags                  = {} -> null
          - tags_all              = {} -> null
          - throughput            = 125 -> null
          - volume_id             = "vol-037686e176ff47576" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp3" -> null
            # (1 unchanged attribute hidden)
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.example: Destroying... [id=i-00140e8047451213a]
aws_instance.example: Still destroying... [id=i-00140e8047451213a, 00m10s elapsed]
aws_instance.example: Still destroying... [id=i-00140e8047451213a, 00m20s elapsed]
aws_instance.example: Still destroying... [id=i-00140e8047451213a, 00m30s elapsed]
aws_instance.example: Still destroying... [id=i-00140e8047451213a, 00m40s elapsed]
aws_instance.example: Still destroying... [id=i-00140e8047451213a, 00m50s elapsed]
aws_instance.example: Still destroying... [id=i-00140e8047451213a, 01m00s elapsed]
aws_instance.example: Destruction complete after 1m5s

Destroy complete! Resources: 1 destroyed.
```
