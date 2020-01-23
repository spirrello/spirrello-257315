# variable "home_ip" {
#   type = string
#   description = "home ip address"
# }

# variable "office_ip" {
#   type = string
#   description = "office ip address"
# }

module "gke-node-pool-01" {
  source = "github.com/spirrello/terraform-gcp.git//modules/gke-node-pools?ref=node-pools"


  region = "${var.region}"
  cluster_name = "${var.project}-01"
  machine_type = "e2-standard-2"
  min_node_count = 1
  max_node_count = 2
  node_pool_name = "superman"
  #maintenance_start_time = "03:00"
  # master_ipv4_cidr_block = "172.16.0.0/28"
  max_pods_per_node = "50"
  #network = "k8s"
  # subnetwork = "k8s-10-0-0-0-24"
  tags = "HOLA"
}