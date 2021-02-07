resource "openstack_dns_recordset_v2" "recordset" {
    count = var.zone.recordsets != null ? length(var.zone.recordsets) : 0

    zone_id = openstack_dns_zone_v2.zone.id
    name = "${var.zone.recordsets[count.index].name}.${local.zone.name}"
    type = var.zone.recordsets[count.index].type
    description = var.zone.recordsets[count.index].description
    ttl = var.zone.recordsets[count.index].ttl
    records = var.zone.recordsets[count.index].records
}