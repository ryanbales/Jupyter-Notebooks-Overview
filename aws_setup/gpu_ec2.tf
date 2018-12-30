provider "aws" {
         region = "us-east-1"
         profile = "${var.aws_profile}"
         shared_credentials_file = "~/.aws/credentials"
}

resource "aws_security_group" "ssh" {
  name = "ssh"
  description = "Allow SSH Access"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_instance" "dsbox" {
        ami = "ami-00ffbd996ef2211e3"
        instance_type = "p2.xlarge"
        key_name = "${var.keyname}"
        vpc_security_group_ids = ["${aws_security_group.ssh.id}"]
        subnet_id = "${var.backend_sn}"

        tags {
             Name = "${var.project}-GPU"
             Terraform = "true"
             Project = "${var.project}"
        }
}

resource "aws_eip" "default" {
  instance = "${aws_instance.dsbox.id}"
  vpc      = true

  tags {
       Name = "${var.project}-EIP"
       Terraform = "true"
       Project = "${var.project}"
  }
}

variable "aws_profile" {
         description = "The AWS profile to use from the credentials file"
         default = "personal"
}

variable "backend_sn" {
         description = "The subnet to use"
         default = "subnet-dc8cd0ab"
}

variable "keyname" {
         description = "The keypair to use"
         default = "rbales-personal"
}

variable "project" {
         description = "Project name to tag with"
         default = "Data Exploration"
}
