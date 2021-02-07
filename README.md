# Terraform Openstack Instances

_This project aims to create a module to deploy instance(s) on openstack provider._

![Release](https://github.com/tf-openstack-modules/terraform-openstack-dnsaas/workflows/Release/badge.svg)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/tf-openstack-modules/terraform-openstack-dnsaas)

## Where to find module documentations

You can find differents documentations versionned by terraform registry [here](https://registry.terraform.io/modules/tf-openstack-modules/dnsaas/openstack/latest).

## Usage examples

```terraform
module "dnaas-zone" {
  source = "../"
  zone = {
		name = "example.com."
		email = "louis@unyc.io"
		recordsets = [
			{
				name = "test"
				type = "A"
				records = ["10.0.0.1"]
			},
			{
				name = "test2"
				type = "A"
				records = ["10.0.0.2"]
			}
		]
	}
}
```