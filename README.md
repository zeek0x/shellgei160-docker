# shellgei160-docker

[シェル・ワンライナー160本ノック](https://gihyo.jp/book/2021/978-4-297-12267-6)に登場するコマンドが使える環境を構築するためのレポジトリです。

## 使い方

```console
$ docker pull zeek0x/shellgei160-docker:up-to-3

# 初回起動時
$ docker run -it --name shellgei zeek0x/shellgei160-docker:up-to-3 /bin/bash

# 2回目以降
$ docker start shellgei
$ docker exec -it shellgei /bin/bash

$ pwd
/shellgei160
```

## ビルド

```console
$ git clone https://github.com/zeek0x/shellgei160-docker.git
$ docker build -t zeek0x/shllgei160-docker shellgei160-docker
```
