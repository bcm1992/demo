provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

resource "oci_core_instance" "instance" {
  count               = 1
  availability_domain = lookup(data.oci_identity_availability_domains.AD.availability_domains["0"], "name")
  compartment_id      = var.tenancy_ocid
  display_name        = format("demo-%s", count.index + 1)
  shape               = "VM.Standard2.1"
  create_vnic_details {
    assign_public_ip = false
    display_name     = format("demo-%s", count.index + 1)
    subnet_id        = data.oci_core_subnets.private.subnets[0].id
    private_ip       = format("10.0.3.%s", count.index + 100)
  }
  metadata = {
    ssh_authorized_keys = chomp(file("/home/demo/.ssh/id_rsa.pub"))
  }
  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.iad.aaaaaaaavxqdkuyamlnrdo3q7qa7q3tsd6vnyrxjy3nmdbpv7fs7um53zh5q"
  }
}