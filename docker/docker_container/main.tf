resource "docker_image" "image_id" {
  name = "${var.image_name}"
}

resource "docker_container" "container_id" {
  name="ghos1153g"
  image= "${docker_image.image_id.latest}"
  ports {
    internal = "${var.i_port}"
    external = "${var.e_port}"
}
}
