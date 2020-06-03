
In this lesson we are going to provision an EC2 using Hashicorps's terraform.

Reference:
https://www.terraform.io/docs/providers/aws/index.html

## What is Terraform? 

Terraform is a tool made by Hashicorp for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers ( aws, azure, Google cloud) as well as custom in-house solutions.

You can compare **Terraform** to **Cloudformation** or **Azure Resource Manager**


### Steps to provision

1) Download the terraform.exe file 
For Windows users
https://www.terraform.io/downloads.html
2) Extract the zip file
3) You will see the terraform executable  file 
4) You can click to install 
5) make a  new directory(can be named anything) and go inside the directory
```console
mkdir aws_vpc && cd aws_vpc 
```

6) Paste this following code to a file called s3demo.tf( can be anything.tf)

#### minimal viable configuration

```HCL
variable "aws_access_key" {
  description = "description"
  default = ""
}

variable "aws_secret_key" {
  description = "description"
  default = ""
}

resource "aws_vpc" "main" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Main"
    Location="Banglore"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "190.160.1.0/24"

  tags = {
    Name = "Subnet1"
  }
}
```

#### Note:

Replace the access_key and secret_access with your AWS IAM user credentials with enough permissions attached.
You can go to IAM console on AWS to do this.
First, go to the IAM management console 
![iam](https://github.com/ravsau/aws-labs/blob/master/images/iam-console.png)

Then Click on the user's name and navigate to the security credentials tab. Click create access keys
![iam](https://github.com/ravsau/aws-labs/blob/master/images/generate-access-keys.png)

Either download the csv file or, click show keys. Now you have both the access_key and secret_key required for the terraform code above.
![iam](https://github.com/ravsau/aws-labs/blob/master/images/iam-generated-keys.png)


If you've setup the AWS CLI and have credentials stored , you may skip the credential portion.
This is what Hashicorp says "If you simply leave out AWS credentials, Terraform will automatically search for saved API credentials (for example, in ~/.aws/credentials) or IAM instance profile credentials. This option is much cleaner for situations where tf files are checked into source control"

7) initialize the working directory for terraform
```console 
terraform init
```

"The terraform init command is used to initialize a working directory containing Terraform configuration files. This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control. It is safe to run this command multiple times."

8) Provision the vpc with this command
```console
terraform apply
```

9) Login to the AWS management console and navigate to the vpc management console.  Check if the instance got provisioned


10) From your terminal/command prompt/ shell , destroy the resources
```console
terraform destroy
```


That's it! you installed Terraform and used it to provision an vpc. 
