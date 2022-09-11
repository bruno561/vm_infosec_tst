terraform {
  source = "git::https://git@github.com/brunopsantos93/module_gcp_vm.git//modules/gce?ref=v0.0.11"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
    project = "curso-de-gcp-358518"
    region = "us-central1"
    zone = "us-central1-a"
    vpc_network = "default"
    vpc_subnetwork = "default"
    compute_name = "windows-server-2019-by-terraform"
    machine_type = "e2-medium"
    disk_type = "pd-standard"
    disk_size = "50"
    image = "windows-server-2019-dc-v20220812"
    external_ip = false
}