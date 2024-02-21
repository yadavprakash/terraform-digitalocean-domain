resource "digitalocean_domain" "domain" {
  name       = var.name
  ip_address = var.ip_address
}

#####################################################################################
##:-This resource is from digitalocean_record.
#####################################################################################

resource "digitalocean_record" "www" {
  for_each = var.enabled ? var.records : {}
  domain   = join("", digitalocean_domain.domain[*].id)
  type     = lookup(each.value, "type", "A")
  name     = lookup(each.value, "name", "www")
  value    = lookup(each.value, "value", "null")
  tag      = each.value.type == "CAA" ? lookup(each.value, "tag", "issue") : null
  ttl      = lookup(each.value, "ttl", 1800)
  priority = each.value.type == "MX" || each.value.type == "SRV" ? lookup(each.value, "priority", 1) : null
  flags    = each.value.type == "CAA" ? lookup(each.value, "flags", 10) : null
}
