---
layout: post
title: "Docker reminders"
description: "An article with some useful Docker reminders."
date: 2018-11-29 11:30:00
comments: false
image: /images/pages/docker.png
keywords: "docker, docker-compose"
category: docker
tags:
  - docker
  - docker-compose
---

# Docker
## Images
### List all images
```bash
docker images
```

### Delete an image
```bash
docker rmi IMAGE_ID
```

### Delete all dangling images
To remove all `none/dangling` images:
```bash
docker rmi $(docker images --quiet --filter "dangling=true")
```

## Containers
### List all containers
```bash
docker ps -a
```

### Delete a container
```bash
docker rm container_name
```

### Exec a command in running container
```bash
docker exec -it running_container_name bash
```

# Docker Compose
## Up
To build and start a compose.
```bash
docker-compose up --remove-orphans --force-recreate --build
```
