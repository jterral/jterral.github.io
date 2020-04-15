# jterral.github.io

Source code for my web site [http://jterral.github.io](http://jterral.github.io).

## Build

This site use [Flutter](https://flutter.dev/) built on branch `gh-pages` and deployed on branch `master` with [Azure Pipelines](https://azure.microsoft.com/fr-fr/services/devops/pipelines/).

[![Build Status](https://dev.azure.com/jterral/Common/_apis/build/status/CICD/jterral.github.io?branchName=master)](https://dev.azure.com/jterral/Common/_build/latest?definitionId=35&branchName=master)

## Debugging

```sh
flutter run -d chrome
```

### Build on machine

```sh
flutter build web
```

### Serve on localhost

After building web project:

```sh
flutter packages pub global activate dhttpd
flutter pub global run dhttpd --path build/web/
```
