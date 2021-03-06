module "rke-cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 3.0"
  name                   = "rke2-cluster"
  create_spot_instance   = true
  #spot_price             = "0.60"
  spot_type              = "one-time"
  count                  = 5
  ami                    = "ami-0a8e758f5e873d1c1"
  instance_type          = "t3.xlarge"
  key_name               = "poc"
  vpc_security_group_ids = ["sg-06fc2608409841b74"]
  subnet_id              = "subnet-f9b3fb9d"
  root_block_device      = [
    {
        volume_type = "gp2"
        volume_size = 30
    },
  ]
  tags = {
      Desired-State = "Ignore"
  }
}

#module "ec2-instance-jump" {
#  source  = "terraform-aws-modules/ec2-instance/aws"
#  version = "2.15.0"
#  name                   = "jump"
#  instance_count         = 1
#  ami                    = "ami-0dc8d444ee2a42d8a"
#  instance_type          = "t3.medium"
#  key_name               = "akin"
#  vpc_security_group_ids = ["sg-06fc2608409841b74"]
#  subnet_id              = "subnet-f9b3fb9d"
#  root_block_device      = [
#    {
#      volume_type = "gp2"
#      volume_size = 16
#    },
#  ]
#  tags = {
#    App         = "jump"
#    Environment = "dev"
#  }
#}
