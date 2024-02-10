---
author: ["jootl"]
title: "Customize your .gitconfig"
date: "2024-02-10"
description: "Simplify Git: aliases and shortcuts at your fingertips."
summary: "Simplify Git: aliases and shortcuts at your fingertips."
tags: ["git", "code", "gist"]
categories: ["git", "cheatsheet"]
series: ["Guides"]
ShowToc: false
TocOpen: false
---

Customize your Git experience with the file available at the root of your user directory.

```
~/.gitconfig
```

## Alias

### Simple Aliases

```ini
[alias]
	co = checkout
	p = pull
	br = branch
	ci = commit
	st = status
	ls = log --oneline -n 10
	caa = commit -a --amend -C HEAD
	fdx = clean -fdx
	fdxx = clean -fdX
	uncommit = reset HEAD~1
	empty = commit --allow-empty -m 'chore(git): empty commit'
	push-o = push --set-upstream origin
```

### Clean Local Branches

The alias `clb` for `clean-local-branches` cleans up your Git space by deleting local branches marked as "[gone]", thus keeping your repository clean and organized.

```ini
[alias]
	clb = "!f() { (git branch -v | awk '$3 == \"[gone]\" { print $1 }' | xargs git branch -D) }; f"
```

### Mega Pull

Tired of constantly repeating the same commands after merging a branch? Here's a handy shortcut to quickly return to your main branch and update it.

```ini
[alias]
	mp = "!f() { \
			colorHeader='\\033[1;36m' ; \
			colorAction='\\033[1;32m' ; \
			colorSuccess='\\033[0;34m' ; \
			colorReset='\\x1b[0m' ; \
			clear ; \
			echo -e \"${colorHeader}====== 🚀 MEGA PULL 🚀 ======${colorReset}\" ; \
			echo -e ; \
			echo -e \"${colorAction}♻️ Switching to main branch...${colorReset}\" ; \
			git checkout main ; \
			echo -e \"\n${colorAction}📩 Pulling latest updates from repository...${colorReset}\" ; \
			git pull ; \
			echo -e \"\n${colorAction}🧹 Cleaning up local branches...${colorReset}\" ; \
			git fetch --prune --verbose ; \
			echo -e ; \
			git clb ; \
			echo -e \"\n${colorAction}🔎 Displaying current status...${colorReset}\" ; \
			git status ; \
		}; \
	f"
```
