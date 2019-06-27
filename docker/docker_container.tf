resource "docker_image" "image_id" {
  name = "ghost:latest"
}

resource "docker_container" "container_id" {
  name="ghostapp"
  image= "${docker_image.image_id.latest}"
}
