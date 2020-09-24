env = "dev"
aws_profile = "default"
vpc_cidr    = "10.0.0.0/16"
cidrs = {
    pub1 = "10.0.1.0/24"
    pub2 = "10.0.2.0/24"
    pri1 = "10.0.3.0/24"
    pri2 = "10.0.4.0/24"
}
key_name = "ironman"
public_key_path = "~/.ssh/ironman.pub"
s3_bucket = "tc-remotestate-55592"