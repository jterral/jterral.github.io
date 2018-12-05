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

# Images
## List all images
```
docker images
```

## Delete an image
```
docker -rmi IMAGE_ID
```

## Delete all dangling images
To remove all `none/dangling` images:
```
docker -rmi `$(docker --quiet --filter "dangling=true")`
```

# Containers
## List all containers
```
docker ps -a
```

## Delete a container
```
docker -rm container_name
```
