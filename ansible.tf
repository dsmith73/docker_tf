/* create ansible container on docker from terraform */

# create ansible container
resource "docker_container" "ansible" {
  name  = "ansible"
  image = "ansible:latest"
  restart = "always"
  ports = {
    internal = "22"
    external = "22"
  }
}

# Create a "Stable Ansible Container (SAC)"
resource "docker_container" "sac" {
  image     = "${docker_image.ubuntu.latest}"
  name      = "sac"
  restart   = "always"
}

resource "docker_image" "ubuntu" {
  name      = "ubuntu:latest"
}