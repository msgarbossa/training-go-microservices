

## Setup

Install the Golang package for your CPU architecture from https://go.dev/doc/install.  Extracting tar file in /usr/local/go (/usr/local/go/bin/go should exist).


Add to profile (~/.profile or ~/.bash_profile):
```
# set variables for go if it exists
if [ -d "/usr/local/go/bin" ] ; then
    PATH="$PATH:/usr/local/go/bin"
    export GOPATH=~/go
    export GOROOT=/usr/local/go
fi
```

### VS Code

- Add extension named `gotemplate-syntax`
- Go to command palette > "Go: Install/Update Tasks" > check the "all" box to select all, then "OK".
- Open folders in workspace with go.mod, not a parent directory (affects lint/auto-completion)


## Go CLI reference

### help on build options
go help build

### help on -ldflags option to go build
go tool link


