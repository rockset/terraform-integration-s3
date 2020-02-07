variable "bucket" {
  description = "Name of the S3 bucket to create with integration with Rockset"
  type = string
}

variable "rockset-external-id" {
  description = "External id provided by the Rockset Console"
  type = string
}

variable "rockset-account-id" {
  description = "Account id provided by the Rockset Console"
  type = string
}

variable "region" {
  default = "us-west-2"
  type = string
}

variable "rockset-role-name" {
  default = "rockset-s3-integration"
  type = string
}
