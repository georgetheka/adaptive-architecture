all: build run

install:
	go get golang.org/x/time/rate
	go get github.com/prometheus/client_golang/prometheus
	go get github.com/prometheus/client_golang/prometheus/promauto
	go get github.com/prometheus/client_golang/prometheus/promhttp

build:
	go build

run:
	./adaptive-architecture -c server &\
		./adaptive-architecture -c proxy &\
		./adaptive-architecture -c queue &\
		./adaptive-architecture -c client &\
		./adaptive-architecture -c producer &
		echo

stop:
	./adaptive-architecture -c killall

