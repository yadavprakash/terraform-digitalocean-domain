provider "digitalocean" {

}

#####################################################################################
##:-This module is from domain.
#####################################################################################

module "domain" {
  source     = "./../"
  name       = "example.com"
  ip_address = null

  records = {
    record1 = {
      type  = "A"
      name  = "www"
      value = "64.225.26.99"
    },
    record2 = {
      type  = "A"
      name  = "demo"
      value = "64.225.26.99"
    }
  }
}


