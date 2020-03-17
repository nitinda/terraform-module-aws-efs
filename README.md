# _Terraform Module : terraform-module-aws-efs_

_Terraform Module for AWS Elastic File System (EFS)_

<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

> **_This is a stable example. It should successfully build out of the box_**
>
> _This examples does is built on Construct Libraries marked "Stable" and does not have any infrastructure prerequisites to build._

---
<!--END STABILITY BANNER-->


## _General_

_This module may be used to create_ **_Elastic File System (EFS)_** _resources in AWS cloud provider...._

---


## Prerequisites

_This module needs_ **_Terraform 0.12.23_** _or newer._
_You can download the latest Terraform version from_ [here](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._

---

## Features Branches

_Below we are able to check the resources that are being created as part of this module call:_

* **_Elastic File System_**
* **_EFS Mount Targets_**


---


## Usage

## Using this repo

_To use this module, add the following call to your code:_

```tf
module "efs" {
  source = "git::https://github.com/nitinda/terraform-module-aws-efs.git?ref=master"


}
```
---

## Inputs

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|:---:|



---


## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**
* **_arn_**
* **_dns\_name_**


---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<module_name>.<output_variable_name>
```

---


## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**
