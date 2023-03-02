resource "ncloud_nks_cluster" "nks-cluster-module" {
    cluster_type = var.cluster_type
    k8s_version = var.k8s_version
    login_key_name = var.
    name = var.cluster_name


    node_pool = optional(list(object({
        cluster_uuid = string
        node_pool_name = string
        node_count = number
        product_code = string
        subnet_no = number
        autoscale = optional(string, false)
    })))
}