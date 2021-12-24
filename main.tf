module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-00bd7cc070262f111"
  instance_type          = "t2.micro"
  monitoring             = false
  vpc_security_group_ids = ["sg-0a4a851426cc70969"]
  subnet_id              = "subnet-67cc7401"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}