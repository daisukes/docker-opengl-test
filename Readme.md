Testing displaying opengl content with Ubuntu16/18 containers on Ubuntu16/18 host

## pre-requisites

- docker
- docker-compose
- nvidia-docker runtime (add nvidia as default-runtime in /etc/docker/daemon.json)

## Test result

- Ubuntu18 container can show opengl content with docker-compose.yaml settings
  - this does not work with Ubuntu16 container
- with glvnd, Ubuntu16 container also can show opengl content
  - see details in Dockerfile and docker-compose.yaml
