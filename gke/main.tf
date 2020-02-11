variable "home_ip" {
  type = string
  description = "home ip address"
}

variable "office_ip" {
  type = string
  description = "office ip address"
}

module "cluster01" {
  source = "github.com/spirrello/terraform-gcp.git//modules/gke"

  #install istio by default, false installs istio
  istio_config = false
  istio_auth = "AUTH_MUTUAL_TLS"
  project = var.project
  region = var.region
  cluster_name = "${var.project}-01"
  cluster_ipv4_cidr_block = ""
  cluster_autoscaling_cpu_min = 6
  cluster_autoscaling_memory_min = 22
  cluster_autoscaling_cpu_max = 12
  cluster_autoscaling_memory_max = 32
  description = "Testing apps on K8s"
  disable_public_endpoint = false
  general_purpose_machine_type = "n1-standard-4"
  general_purpose_min_node_count = 1
  general_purpose_max_node_count = 2
  maintenance_start = "03:00"
  master_ipv4_cidr_block = "172.16.0.0/28"
  max_pods_per_node = "50"
  network = "k8s"
  subnetwork = "k8s-10-0-0-0-24"
  tags = ["cluster01"]


  master_authorized_networks_config = [{
    cidr_blocks = [{
      cidr_block   = "10.0.0.0/8"
      display_name = "10-0-0-0-8"
    },{
      cidr_block   = "172.16.0.0/12"
      display_name = "172-16-0-0-12"
    },{
      cidr_block   = var.home_ip
      display_name = "home"
    },{
     cidr_block   = var.office_ip
     display_name = "office"
    }],
  }]
}
