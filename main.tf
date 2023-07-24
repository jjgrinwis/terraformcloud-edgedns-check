# Module version coming from Terraform cloud private module
#
# use 'terraform login' to create API token so you can download this module
#
# Make sure to set your ENV vars:
# $ export AKAMAI_CLIENT_SECRET="your_secret"
# $ export AKAMAI_HOST="your_host"
# $ export AKAMAI_ACCESS_TOKEN="your_access_token"
# $ export AKAMAI_CLIENT_TOKEN="your_client_token"
#
# when using terraform cloud add credentials to workspace as a variable set.

module "standard-records" {
  source  = "app.terraform.io/grinwis-com/standard-records/edgedns"
  version = "0.0.4"

  # loop through our list of fqdn's to create those standard records
  for_each = var.fqdn_set
  fqdn = each.value
}