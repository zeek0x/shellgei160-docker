# shellgei160-docker

## 使い方

```console
$ docker pull zeek0x/shellgei160-docker:up-to-3

# 初回起動時
$ docker run -it --name shellgei zeek0x/shellgei160-docker:up-to-3 /bin/bash
# 2回目移行
$ docker start shellgei
$ docker exec -it shellgei /bin/bash

$ pwd
/shellgei160
```

## ビルド

```console
git clone https://github.com/zeek0x/shellgei160-docker.git
docker build -t zeek0x/shllgei160-docker shellgei160-docker
```
