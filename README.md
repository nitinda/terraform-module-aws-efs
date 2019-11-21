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

From branch : **_terraform-11_**

* **_EFS (Terraform 11 supported code)_**


---

## Below are the resources that are launched by this module

* **_EFS_**
* **_EFS Mount Targets_**


---

## Usage

## Using this repo

To use this module, add the following call to your code:

```tf
module "<layer>-efs-<AccountID>" {
  source = "git::https://github.com/nitinda/terraform-module-aws-s3.git?ref=master"


}
```
---

## Inputs

The variables required in order for the module to be successfully called from the deployment repository are the following:


|         **_Variable_**          |        **_Description_**            |   **_Type_**   |
|---------------------------------|-------------------------------------|----------------|
| creation_token                  | A unique name for EFS               | string         |
| encrypted                       | disk will be encrypted              | string         |
| lifecycle_policy                | A file system lifecycle policy      | list           |
| performance_mode                | The file system performance mode    | string         |
| provisioned_throughput_in_mibps | The throughput, measured in MiB/s   | string         |
| throughput_mode                 | Throughput mode for the file system | string         |
| subnet_ids                      | The IDS sof the subnets             | list           |
| security_groups                 | A list of security group IDs        | list           |
| common_tags                     | Resource Tags                       | map            |




## Outputs

* **_id_**
* **_arn_**
* **_dns\_name_**


Details are in respective branch.


### Usage
In order for the variables to be accessed on module level please use the syntax below:

```tf
module.<module_name>.<output_variable_name>
```

If an output variable needs to be exposed on root level in order to be accessed through terraform state file follow the steps below:

- Include the syntax above in the network layer output terraform file.
- Add the code snippet below to the variables/global_variables file.

```tf
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

```tf
"${data.terraform_remote_state.<module_name>.<output_variable_name>}"
```

## Authors
Module maintained by Module maintained by the - **_Nitin Das_**
