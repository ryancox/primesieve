
Container wrapper for http://primesieve.org/ using minimal Alpine container with no glibc dependencies. 

Docker Hub: https://hub.docker.com/r/ryancox/primesieve/

Usage:

```
$ docker run -it ryancox/primesieve:5.6.0 1e6
Sieve size = 32 kilobytes
Threads    = 1
100%
Primes  : 78498
Seconds : 0.000
```

