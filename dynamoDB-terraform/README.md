To run Terraforn setup:

terraform init
terraform plan
terraform apply

Debugging and Troubleshooting in Terraform:

1. Use the `terraform plan` command before applying changes
2. Use the `terraform validate` command
3. Investigate Terraform’s logs

Disaster Recovery Plan:

1. Use Infrastructure as Code (IaC) to easily recreate your infrastructure in the event of a disaster.
2. Implement data backup and recovery strategies for your applications and databases.
3. Set up multi-region redundancy for critical services.
4. Regularly test your disaster recovery plan to ensure it works as expected.