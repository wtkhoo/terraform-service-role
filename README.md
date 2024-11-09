
This simple Terraform code creates an AWS IAM role as Terraform service assume role for the specified trusted AWS account with STS external id.

## Requirements

- [Terraform](https://www.terraform.io/downloads) (>= 1.5.0)
- AWS account [configured with proper credentials to run Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration)

## Walkthrough

1) Clone this repository to your local machine.

   ```shell
   git clone https://github.com/wtkhoo/terraform-service-role.git
   ```

2) Change your directory to the `terraform-service-role` folder.

   ```shell
   cd terraform-service-role
   ```

3) Run the terraform [init](https://www.terraform.io/cli/commands/init) command to initialize the Terraform deployment and set up the providers.

   ```shell
   terraform init
   ```

4) To customize your deployment, create a `terraform.tfvars` file and specify your values.

   ```
   # Trusted AWS account id
   account_id  = "123456789012"
   # STS external id
   external_id = "some-random-characters"
   ```
  
5) Next step is to run a terraform [plan](https://www.terraform.io/cli/commands/plan) command to preview what will be created.

   ```shell
   terraform plan
   ```

6) If your values are valid, you're ready to go. Run the terraform [apply](https://www.terraform.io/cli/commands/apply) command to provision the resources.

   ```shell
   terraform apply
   ```

7) When you're done with the demo, run the terraform [destroy](https://www.terraform.io/cli/commands/destroy) command to delete all resources that were created in your AWS environment.

   ```shell
   terraform destroy
   ```

## Questions and Feedback

If you have any questions or feedback, please don't hesitate to [create an issue](https://github.com/wtkhoo/terraform-service-role/issues/new).