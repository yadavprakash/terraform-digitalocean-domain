output "id" {
  description = "The ID of the DigitalOcean domain"
  value       = join("", digitalocean_domain.domain[*].id)
}

output "urn" {
  description = "The URN (Uniform Resource Name) of the DigitalOcean domain"
  value       = join("", digitalocean_domain.domain[*].urn)
}

output "ttl" {
  description = "The Time-to-Live (TTL) value of the DigitalOcean domain"
  value       = join("", digitalocean_domain.domain[*].ttl)
}

output "fqdn" {
  description = "The fully qualified domain name (FQDN) specified in the input variables"
  value       = var.fqdn
}
