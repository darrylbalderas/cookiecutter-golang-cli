test:
	go test -v ./...

lint:
	staticcheck -f stylish ./...
	golangci-lint run ./...

init:
	cobra-cli init
