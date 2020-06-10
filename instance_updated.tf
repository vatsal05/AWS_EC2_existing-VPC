resource "aws_instance" "Example"{
ami ="${lookup(var.ami, var.AWS_REGION)}"
instance_type="t2.micro"
count= var.instance_count

#VPC subnet
subnet_id="${aws_subnet.main_public.id}"

# he security group
vpc_security_group_ids=["${aws_security_group.allow-ssh.id}"]
#the public SSH  key
key_name="${aws_key_pair.mykeypair.key_name}"

}
