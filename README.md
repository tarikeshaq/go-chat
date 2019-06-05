# Go chat
Simple gRPC based chat application built using go, that can broadcast to multiple clients

### Prerequisites

If you want to use this, ensure that you have go 1.11 or higher as I'm using go modules.
Also ensure that you have protoc dowloaded: https://developers.google.com/protocol-buffers/docs/downloads
and that you also have the go grpc plugin.


### Installing

Clone the repo (it does not need to be in your GOPATH, thanks go modules)

then, in the repo root directory simply run the server

```
$ go run main.go
```

The server will now be listening on tcp port :8080

## Usage

You can now access this from any gRPC client that follows the service.proto file in the proto directory

An example of a client is a go client that's in client/main.go

to test it, cd into the client directory, then

```
$ go run main.go
```
Do this on multiple terminals/clients and enter some text then press enter.

Hopefully the text you input will be broadcasted to all clients.
