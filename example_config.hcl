hcp_boundary_cluster_id = "<hcp_boundary_clusterID>"

listener "tcp" {
  address = "0.0.0.0:9202"
  purpose = "proxy"
}

disable_mlock= true
disable_cache= false
        
worker {
	  auth_storage_path = "<path to store worker config>/worker1"
	  tags {
		key = ["docker"]
	  }
}
