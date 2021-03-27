module "gke_cluster" {
    source  = "../../"
    cluster_name = "fuchicorp-cluster"
    google_region = "us-central1"
    google_project_id =  "perceptive-ivy-308201"
    cluster_node_count = "2"
    cluster_version = "1.15"
    google_credentials = "./fuchicorp-service-account.json" # service account
    image_type        = "COS"
    disk_size_in_gb   = "10"
    machine_type      = "n1-standard-2"
    labels            = {
        "label" = "fuchicorp-project"
    }
}
