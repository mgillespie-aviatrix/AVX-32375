module "spoke_gcp_1" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version       = "1.4.1" ## 6.9 Aviatrix Controller
  cloud           = "GCP"
  name            = "avx-gcp-us-west2-appx"
  cidr            = "10.71.0.0/24"
  region          = "us-west2"
  account         = "GCP"
  attached        = true
  az1             = "b"
  az2             = "a"
  insane_mode     = true
  instance_size   = "n1-highcpu-8"
  ha_gw           = true
}