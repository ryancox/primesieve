FROM gliderlabs/alpine:3.3
MAINTAINER Ryan Cox <ryan.a.cox@gmail.com>

ADD target/primesieve /usr/local/bin
ADD target/libgomp.so.1 \
    target/libgcc_s.so.1 \
    target/libstdc++.so.6 \
    target/libprimesieve.so.6 \
    /usr/local/lib/
USER nobody
ENTRYPOINT ["/usr/local/bin/primesieve"]
