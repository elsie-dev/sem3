tags = {
  project     = "elcy-sample"
  environment = "dev"
  terraform   = "true"
  region      = "eu-west-1"
  repo        = "https://github.com/elsie-dev/Infrastructure-Code"
}


sg_ports = {
  ssh = {
    port        = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  https = {
    port        = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

vpc_cidr              = "10.0.0.0/16"
private_subnets       = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets        = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
region                = "eu-west-1"
ami_id                = "ami-09dd5f12915cfb387"
ec2_instance_type     = "t2.micro"
enable_ec2_monitoring = false
