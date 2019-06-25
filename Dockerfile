FROM golang

ENV GO111MODULE=on

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go install main.go

EXPOSE 8080

ENTRYPOINT ["/go/bin/main"]