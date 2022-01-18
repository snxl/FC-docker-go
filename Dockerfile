FROM golang:alpine

WORKDIR /sur/app

COPY main.go .

ENTRYPOINT [ "go", "run", "main.go" ]