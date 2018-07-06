FROM golang:1.10
WORKDIR /go/src/github.com/grafana/grafana/
COPY . .
RUN go version
RUN go run build.go setup
RUN go test -v ./pkg/...
RUN go run build.go build
