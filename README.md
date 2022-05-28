
# CloudOmada

Deploy TP-Link Omada Controller on AWS with Terraform and Ansible. Terraform provisions all the necessary components on AWS including launching an VM with VPC, Security Gateway and etc. Ansible installs all the necessary dependencies on Omada controller and installs the controller on AWS.

## Requirements

Terraform, AWS Cli, Ansible and terraform-inventory should be installed.

### Terraform

Install terraform using official [documentation](https://learn.hashicorp.com/tutorials/terraform/install-cli).

### AWS CLI

Follow the official guide on [AWS](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) to install and configure AWS CLI on you machine.

### Ansible

* Install pip `sudo apt install python3-pip -y`
* install ansible with pip `pip install ansible`

### terraform-inventory

Install terraform-inventory with the following

```bash
curl https://github.com/adammck/terraform-inventory/releases/download/v0.10/terraform-inventory_v0.10_linux_amd64.zip --output terraform-inventory.zip
sudo unzip terraform-inventory.zip /usr/local/bin/terraform-inventory
```

## Provision

Clone the repo with

```bash
git clone https://github.com/kdpuvvadi/CloudOmada.git && cd CloudOmada
```

### Initialize terraform

```bash
terraform init
```

### Variables

Copy variable template with

```bash
cp example.var.tfvars var.tfvars
```

change the region and instance size based on your needs.

### Plan

```bash
terraform plan --var-file="var.tfvars" -out CloudOmada
```

### Apply

```bash
terraform apply "CloudOmada"
```

This will provision the AWS instance and launches all the necessary services.

## Deploy Omada

To run the ansible playbook, inventory in required.

`terraform-inventory` can be used to get the ip of the launched instance with `terraform.tfstate` or if  remote state is used path to that state file is needed.

### Run ansible playbook

```bash
TF_STATE=./ ansible-playbook --inventory-file=/usr/local/bin/terraform-inventory ansible/main.yml
```

> Default user of the AWS Ubuntu instance is `ubuntu`, which is used in the `ansible.cfg`

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Feedback

If you have any feedback, please reach out.

## Contributing

Contributions are always welcome!

Feel free to open a `PR`
