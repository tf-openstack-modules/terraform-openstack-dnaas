variable "zone" {
  type = object({
    name = string
    email = string
    description = optional(string)
    ttl = optional(number)
    type = optional(string)
    masters = optional(list(string))
    recordsets = optional(list(object({
      name = string
      type = string
      description = optional(string)
      ttl = optional(number)
      records = list(string)
    })))
  })
  description = <<EOF
Zone is a list of DNS records. Zone will be created if it does not exist. DNS records will be updated if they exist.
EOF

/*   validation {
    condition     = var.zone.type == "PRIMARY" || var.zone.type == "SECONDARY"
    error_message = "Attribute zone.type attribute isn't equal to 'PRIMARY' or 'SECONDARY'."
  }

  validation {
    condition     = var.zone.type == "SECONDARY" && var.zone.masters != null
    error_message = "If zone.type equal 'SECONDARY' you have to set a list of masters DNS servers."
  }

  validation {
    condition     = can(regex("^(?!-)[A-Za-z0-9-]+([\\-\\.]{1}[a-z0-9]+)*\\.[A-Za-z]{2,6}\\.$", var.zone.name))
    error_message = "Attribute zone.name should be like 'exemple.com.'."
  } */
}

locals {
  zone = defaults(var.zone, {
    description = ""
    ttl = 3600
    type = "PRIMARY"
    masters = ""
    recordsets = {
      description = ""
      ttl = 3000
    }
  })
}