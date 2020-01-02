module "cluster01" {
  source = "github.com/spirrello/terraform-gcp.git//modules/gke"

  project = "${var.project}"
  region = "${var.region}"
  cluster_name = "${var.project}-01"
  description = "Testing apps on K8s"
  max_pods_per_node = "50"
  general_purpose_machine_type = "n1-standard-1"
  general_purpose_min_node_count = 2
  general_purpose_max_node_count = 4
  tags = ["cluster01"]
  network = "k8s"
  master_ipv4_cidr_block = "172.16.0.0/28"
  subnetwork = "k8s-10-0-0-0-24"
  maintenance_start = "03:00"
  cluster_ipv4_cidr_block = ""

}