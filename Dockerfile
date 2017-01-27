FROM jupyter/minimal-notebook

MAINTAINER Kozo Nishida <knishida@riken.jp>

ADD . /workdir
WORKDIR /workdir

USER root

RUN apt-get update && apt-get install -yq \
    ruby \
    ruby-dev \
    rake \
    && apt-get clean && \
    git clone --depth=1 https://github.com/zeromq/libzmq && \
    git clone --depth=1 https://github.com/zeromq/czmq && \
    cd libzmq && ./configure && make && make install && \
    cd czmq && ./configure && make && make install && \
    gem install cztop specific_install && \
    gem specific_install https://github.com/SciRuby/iruby.git && \
    iruby register && \
    rm -rf /var/lib/apt/lists/*

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_USER
