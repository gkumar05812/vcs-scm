# AWS region and instance details
$region = "us-east-1"
$instanceType = "t2.micro"
$imageId = "ami-xxxxxxxxxxxxxxxxx"   # Replace with your desired AMI ID
$keyPairName = "your-key-pair-name"   # Replace with your key pair name
$securityGroupIds = "sg-xxxxxxxxxxxxxx"   # Replace with your security group IDs
$subnetId = "subnet-xxxxxxxxxxxxxx"   # Replace with your subnet ID
$instanceName = "MyEC2Instance"   # Replace with your desired instance name

# Import AWS module
Import-Module AWSPowerShell

# Set AWS region
Set-DefaultAWSRegion -Region $region

# Launch the EC2 instance
New-EC2Instance -ImageId $imageId -InstanceType $instanceType -KeyName $keyPairName -SecurityGroupId $securityGroupIds -SubnetId $subnetId | 
    Add-EC2Tag -Key "Name" -Value $instanceName

# Print a message
Write-Host "EC2 instance $instanceName created!"
