export GOPATH=$(CURDIR)

default: src/main/main.go
	go build -o bin/app src/main/main.go

run: default
	./bin/app

fmt:
	gofmt -tabwidth=2 -tabs=false -w src/main/**/*.go

dep-install:
	go get github.com/nu7hatch/gouuid
