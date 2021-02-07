resource "openstack_dns_zone_v2" "zone" {
    name        = local.zone.name
    email       = local.zone.email
    description = local.zone.description
    ttl         = local.zone.ttl
    type        = local.zone.type
    masters     = local.zone.masters
}