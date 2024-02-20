# Terraform AWS EC2 Instance Module

This Terraform module provisions an EC2 instance on AWS with customizable AMI and instance type.

## Usage

1. **Clone the repository:**

    ```bash
    git clone <repository_url>
    ```

2. **Navigate to the project directory:**

    ```bash
    cd <project_directory>
    ```

3. **Initialize Terraform:**

    ```bash
    terraform init
    ```

4. **Create `terraform.tfvars` file:**

    Create a `terraform.tfvars` file in the root directory with the following content:

    ```hcl
    ami = "ami-0c7217cdde317cfec"
    ```

    Replace `"ami-0c7217cdde317cfec"` with the desired AMI ID.

5. **Switch to the desired workspace:**

    ```bash
    terraform workspace select <workspace_name>
    ```

    Replace `<workspace_name>` with the name of the desired workspace (e.g., `dev`, `stage`, `prod`).

6. **Adjust configuration if necessary:**

    If you need to customize the instance type or other parameters, modify the variables in `main.tf` and `modules/ec2_instance/main.tf`.

7. **Review the Terraform plan:**

    ```bash
    terraform plan
    ```

8. **Apply the Terraform configuration:**

    ```bash
    terraform apply
    ```

    Confirm with `yes` when prompted.

9. **Destroy resources (when no longer needed):**

    ```bash
    terraform destroy
    ```

    Confirm with `yes` when prompted.

## Inputs

- `ami`: (Required) The ID of the Amazon Machine Image (AMI) to use for the EC2 instance.
- `instance_type`: (Optional) The type of EC2 instance to launch. Default is `t2.micro`.

## Outputs

- `public_ip`: The public IP address of the provisioned EC2 instance.
- `instance_type`: The type of EC2 instance provisioned.

## Authors

- [Tarun-Chand-Illapu](https://github.com/Tarun-Chand-Illapu)
