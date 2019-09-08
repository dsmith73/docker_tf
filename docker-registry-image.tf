/* Docker Registry Image */  
### Used in conjunction with the docker_image resource  
### to keep an image up to date on the latest available  
### version of the tag  

/*
data "docker_registry_image" "ubuntu" {
  name = "ubuntu:precise"
}

resource "docker_image" "ubuntu" {
  name          = "${data.docker_registry_image.ubuntu.name}"
  pull_triggers = ["${data.docker_registry_image.ubuntu.sha256_digest}"]
}
*/
