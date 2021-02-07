locals {
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

provider "openstack" {
  use_octavia = true
}