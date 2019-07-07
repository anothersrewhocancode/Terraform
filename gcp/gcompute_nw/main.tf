resource "google_compute_network" "dev_nw" {
  name = "mygcpvpc"
  auto_create_subnetworks = true
}
