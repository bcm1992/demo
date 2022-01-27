data "oci_identity_availability_domains" "AD" {
  compartment_id = var.tenancy_ocid
}

data "oci_core_vcns" "vcns" {
  compartment_id = var.tenancy_ocid
}

data "oci_core_subnets" "private" {
  compartment_id = var.tenancy_ocid
  vcn_id         = data.oci_core_vcns.vcns.virtual_networks[0].id
  filter {
    name   = "display_name"
    values = ["Private subnet"]
  }
}
