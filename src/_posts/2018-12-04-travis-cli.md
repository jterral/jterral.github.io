---
layout: post
title: "Travis CLI in Docker container"
description: "Building a Docker image to use Travis CLI."
date: 2018-12-04 11:30:00
comments: false
image: /images/pages/travis.png
keywords: "travis, docker"
category: travis
tags:
  - travis
  - docker
---

<h1>Dockerfile</h1>
Dockerfile used to build an image with `Travis CLI`.

```dockerfile
FROM ruby:alpine

RUN apk add --no-cache build-base git && \
    gem install travis && \
    gem install travis-lint && \
    apk del build-base && \
    mkdir workspace

VOLUME ["/workspace"]

ENTRYPOINT ["travis"]
```

# Build
```
docker build --tag jootl\travis-cli .
```

<h1>Usage</h1>
To use, for example, the encryption tool :

```bash
docker -it --rm 
```