FROM gliderlabs/alpine:3.3
MAINTAINER Ryan Cox <ryan.a.cox@gmail.com>

ARG VERSION
ENV BASENAME primesieve-${VERSION}

RUN apk update
RUN apk add alpine-sdk
ADD https://dl.bintray.com/kimwalisch/primesieve/${BASENAME}.tar.gz /
RUN tar zxvf ${BASENAME}.tar.gz
CMD cd ${BASENAME} && \
    ./configure && \
    make install && \
    cp /usr/local/bin/primesieve /target && \
    cp /usr/local/lib/libprimesieve.so.6 /target && \
    cp /usr/lib/libstdc++.so.6 /target && \
    cp /usr/lib/libgcc_s.so.1 /target && \
    cp /usr/lib/libgomp.so.1 /target
