/* Make a Docker Container with Ansible running in it */

provider "docker" {
  host = "tcp://localhost:2376"
}

/*
  registry_auth {
    address = "registry.hub.docker.com"
    config_file = "${pathexpand("~/.docker/config.json")}"
  }

  registry_auth {
    address = "quay.io:8181"
    username = "someuser"
    password = "somepass"
  }
}

data "docker_registry_image" "quay" {
  name = "myorg/privateimage"
}

data "docker_registry_image" "quay" {
  name = "quay.io:8181/myorg/privateimage"
}
*/

# declare any input variables

# create docker volume resource

# create docker network resource
