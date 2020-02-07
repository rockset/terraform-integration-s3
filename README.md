# Rockset S3 Integration

This Terraform module sets up an S3 bucket and created a IAM role which configured
for integration with [Rockset S3 data ingestion](https://docs.rockset.com/amazon-s3/).

```hcl-terraform
module "rockset-s3-integration" {
  source = "rockset/s3/integration"
  bucket = "<bucket name>"
  rockset-account-id = "<rockset account id>"
  rockset-external-id = "<rockset external id>"
}

output "rockset-s3-integration-role-arn" {
  value = module.rockset.rockset-role-arn
}
```

This outputs the ARN of the created role which should be pasted into the [Rockset Console](https://console.rockset.com/integrations/new/s3).

```
Outputs:

rockset-s3-integration-role-arn = arn:aws:iam::<account-id>:role/rockset-s3-integration
```
