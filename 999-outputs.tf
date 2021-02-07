output "zone" {
  value = resource.openstack_dns_zone_v2.zone
}

output "recordset" {
  value = resource.openstack_dns_recordset_v2.recordset
}