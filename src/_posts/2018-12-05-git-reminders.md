---
layout: post
title: "Git reminders"
description: "An article with some useful Git reminders."
date: 2018-12-05 11:30:00
comments: false
image: /images/pages/git.png
keywords: "git"
category: git
tags:
  - git
---

# Conventions to write good commit messages
The first line cannot be longer than 70 characters, the second line is always blank and other lines should be wrapped at 80 characters. The type should always be lowercase as shown below.
 * `feat` (new feature for the user, not a new feature for build script)
 * `fix` (bug fix for the user, not a fix to a build script)
 * `docs` (changes to the documentation)
 * `style` (formatting, missing semi colons, Sonar fixes etc; no production code change)
 * `refactor` (refactoring production code, eg. renaming a variable)
 * `test` (adding missing tests, refactoring tests; no production code change)
 * `chore` (updating npm tasks etc; no production code change)

# Reset
To reset the last commit not already pushed and keep changes in the "Staged changes" state:
```bash
git reset --soft HEAD~1
```
