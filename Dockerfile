FROM ubuntu:20.04

RUN apt upgrade -y && apt update -y

RUN DEBIAN_FRONTEND=noninteractive apt install -y \
    # utilities
    git \
    vim \
    emacs \
    # shellgei160
    bc \
    man-db \
    manpages-ja \
    manpages-ja-dev \
    language-pack-ja \
    imagemagick \
    cowsay \
    python3 \
    ruby \
    nkf \
    mecab \
    libkkc-utils \
    translate-shell \
    pandoc \
    texlive-lang-english

# TODO: https://github.com/BurntSushi/ripgrep


RUN update-locale LANG=ja_JP.UTF-8 && \
    yes | unminimize && \
    gem install zen_to_i

RUN echo 'export PS1="$ "' >> $HOME/.bashrc && \
    echo 'set -o emacs' >> $HOME/.bashrc

RUN git clone https://github.com/shellgei/shellgei160.git

WORKDIR /shellgei160
