output "ip_address" {
  value = "${docker_container.container_id.ip_address}"
  description = "ip of the container"
}
