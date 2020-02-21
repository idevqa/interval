# Gua-iOS-Interval

## Introduction

这个是 interval 的发布器，基于 Hugo 制作的。用来对 Git Pages 进行发布使用。后期计划使用 webhook 制作成自动化发布模式。

## Development Deploy

### Install Hugo

```shell
$ brew install hugo
```

### Clone Repo

```shell
$ git clone git@github.com:idevqa/interval.git && cd interval
```

### Initial Git Submodule

```shell
$ git submodule update --init
```

### Run Server

```shell
$ hugo server -D
```

## License