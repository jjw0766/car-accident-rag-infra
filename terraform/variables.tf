variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI ID for us-east-1"
  default     = "ami-0533f5b0010996849" # us-east-1 기준 Amazon Linux 2023 (64비트 x86)
}

variable "instance_type" {
  default = "m5.large"
}

variable "key_name" {
  description = "Name of the existing AWS Key Pair"
}