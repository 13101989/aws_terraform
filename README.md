# Deploy Wordpress platform on Amazon Linux (Fedora based)

```bash
# Instantiate the environment
terraform init

# Plan the environment
terraform plan

# Deploy environment
terraform apply --auto-approve

# Connect to the machine - get public IP or DNS and get key
terraform output -raw private_key > ec2_key_name.pem 
chmod 400 ec2_key_name.pem

# Mandatory provide user - by default uses the session user
ssh -i ec2_key_name.pem  user@publicIP
```