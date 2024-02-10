---
author: ["jootl"]
title: "Personnaliser votre .gitconfig"
date: "2024-02-10"
description: "Simplifiez Git : alias et raccourcis à portée de main."
summary: "Simplifiez Git : alias et raccourcis à portée de main."
tags: ["git", "code", "gist"]
categories: ["git", "cheatsheet"]
series: ["Guides"]
ShowToc: false
TocOpen: false
---

Personnaliser votre expérience Git avec le fichier disponible à la racine de votre utilisateur.

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

L'alias `clb` pour `clean-local-branch` nettoie votre espace Git en supprimant les branches locales marquées comme "[gone]", gardant ainsi votre dépôt propre et organisé.

```ini
[alias]
	clb = "!f() { (git branch -v | awk '$3 == \"[gone]\" { print $1 }' | xargs git branch -D) }; f"
```

### Mega Pull

Fatigué de répéter sans cesse les mêmes commandes après avoir mergé une branche ? Voici un raccourci pratique pour revenir rapidement à votre branche principale et la mettre à jour.

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
