Testing opengl display content with Ubuntu16/18 containers on Ubuntu18 host


- as of 02/25/2020
- Ubuntu18 can show opengl content with docker-compose.yaml settings
  - with nvidia as default-runtime (setting by /etc/docker/daemon.json)
  - this does not work with Ubuntu16 container
- with glvnd, Ubuntu16 can show opengl content
  - see details in Dockerfile and docker-compose.yaml
