

## Setup

Install the Golang package for your CPU architecture from https://go.dev/doc/install.  Extracting tar file in /usr/local/go (/usr/local/go/bin/go should exist).


Add to profile (~/.profile or ~/.bash_profile):
```
# set variables for go if it exists
if [ -d "/usr/local/go/bin" ] ; then
    PATH="$PATH:/usr/local/go/bin:~/go/bin"
    export GOPATH=~/go
    export GOROOT=/usr/local/go
fi
```

### VS Code

- Add extension for glang.go (official extension from "Go Team at Google")
- Add extension named `gotemplate-syntax`
- Go to command palette > "Go: Install/Update Tasks" > check the "all" box to select all, then "OK".
- Open folders in workspace with go.mod, not a parent directory (affects lint/auto-completion)

### Mongo Compass

Install Mongo Compass.  Use Flatpak on Linux.

Connection string:
mongodb://admin:password@localhost:27017/logs?authSource=admin&readPreference=primary&directConnection=true&ssl=false


## Go CLI reference

### help on build options
go help build

### help on -ldflags option to go build
go tool link

### gRPC

Install tools:
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.27
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

1. define a protocol (write .proto file)
2. use 2 tools above to compile (1 command)
3. write client code
4. write server code
5. run and test


VS Code:
- Add extension for peterj.proto ("Protobuf support" by peterj)

Install [protoc binary](https://grpc.io/docs/protoc-installation).  This tool generates language-specific code from a proto file.


```bash
sudo apt install -y protobuf-compiler
```
Can just download the package, unzip, and copy protoc binary from bin directory to a location in PATH such as ~/go/bin.

```bash
cd logger-service/logs
protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative logs.proto
```

