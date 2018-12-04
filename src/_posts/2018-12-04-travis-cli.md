---
layout: post
title: "Travis CLI in Docker container"
date:   2018-12-04 11:30:00
comments: false
image: /images/pages/travis.png
keywords: "travis, docker"
category: travis
tags:
  - travis
  - docker
---

<h1>Dockerfile</h1>

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

<h1>Usage</h1>
