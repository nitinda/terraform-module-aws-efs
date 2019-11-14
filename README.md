# Terraform Module Name: terraform-module-aws-efs


## General

This module may be used to create Elastic File System resources in AWS cloud provider..

---


## Prerequisites

This module needs Terraform 0.11.10 or newer.
You can download the latest Terraform version from [here](https://www.terraform.io/downloads.html).

This module deploys aws services details are in respective feature branches.

---

## Features Branches

Below we are able to check the resources that are being created as part of this module call:

From branch : *terrform-11*

- *EFS (Terraform 11 supported code)*

From branch : *terrform-12* *work in progress*

- *EFS (Terraform 12 supported code - work in progres)*


---

## Below are the resources that are launched by this module

- EFS
- 


---

## Usage

## Using this repo

To use this module, add the following call to your code:

```tf
module "<layer>-s3-<AccountID>" {
  source = "git::https://github.com/nitinda/terraform-module-aws-s3.git?ref=master"


}
```
---

## Inputs

The variables required in order for the module to be successfully called from the deployment repository are the following:


| Variable               |          Description         |    Type    |
|------------------------|------------------------------|------------|
|                        |                              |            |



Details are in respective branch.


## Outputs

- *s3_arn*
- *s3_id*


Details are in respective branch.


### Usage
In order for the variables to be accessed on module level please use the syntax below:
```bash
module.<module_name>.<output_variable_name>
```

If an output variable needs to be exposed on root level in order to be accessed through terraform state file follow the steps below:

- Include the syntax above in the network layer output terraform file.
- Add the code snippet below to the variables/global_variables file.
```bash
data "terraform_remote_state" "<module_name>" {
  backend = "s3"

  config {
    bucket = <bucket_name> (i.e. "s3-webstack-terraform-state")
    key    = <state_file_relative_path> (i.e. "env:/${terraform.workspace}/4_Networking/terraform.tfstate")
    region = <bucket_region> (i.e. "eu-central-1")
  }
}
```
- The output variable is able to be accessed through terraform state file using the syntax below:
```bash
"${data.terraform_remote_state.<module_name>.<output_variable_name>}"
```

## Authors
Module maintained by Module maintained by the - Nitin Das
