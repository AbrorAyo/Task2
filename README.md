# Infrastructure Setup and Usage

This document outlines the setup and usage of the infrastructure deployed using Terraform on AWS. The architecture includes a VPC, public and private subnets, a bastion host, a NAT gateway, and security groups.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Architecture Overview](#architecture-overview)
- [Setup Instructions](#setup-instructions)

## Prerequisites

Before you begin, ensure you have the following:

- An **AWS account** with appropriate permissions.
- **AWS CLI** installed and configured with your credentials.
- **Terraform** installed (version 1.0.0 or higher).

## Architecture Overview

The infrastructure consists of:

- **VPC**: A Virtual Private Cloud (VPC) is created with a CIDR block of `10.0.0.0/16`.
- **Subnets**:
  - **Public Subnets**: Two public subnets in the `us-east-1` region with CIDR blocks `10.0.1.0/24` and `10.0.2.0/24`.
  - **Private Subnets**: Two private subnets in the `us-east-1` region with CIDR blocks `10.0.3.0/24` and `10.0.4.0/24`.
- **Bastion Host**: A bastion host in the public subnet to securely access private subnets.
- **NAT Gateway**: A NAT gateway that allows instances in the private subnets to connect to the internet.
- **Security Groups**: Security groups to control inbound and outbound traffic.

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd <repository-directory>

2. **Initialize Terraform**:
   ```bash
   terraform init
   terraform plan
   terraform apply