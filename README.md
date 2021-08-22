# Adaptive Architecture

This repo contains a PoC that demonstrates a distributed system design with adaptive capabilities.

# Requirements

* MacOS
* Prometheus
* Grafana
* Golang

# Getting Started

After configuring your go paths, run these Makefile targets

```
make install
make build
make run
```

In grafana, import a new dashboard by loading the `grafana.json` file in this repo.


# Controls

The services are configured to run on various sequential ports from 7773 to 7777.

To control response time use the following:

```
curl http://localhost:7777/slowdown # doubles response time
curl http://localhost:7777/speedup # halves response time
```

To control rate limit use the following

```
curl http://localhost:7777/reduceratelimit # halves the rate limit
curl http://localhost:7777/increaseratelimit # doubles the rate limit
```

To control the failure rate use the following

```
curl http://localhost:7777/control?percentage_reqs_fail=20 # sets failure rate to 20 percent
```





