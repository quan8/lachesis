BUILD_TAGS?=lachesis

# vendor uses Glide to install all the Go dependencies in vendor/
vendor:
	glide install

# install compiles and places the binary in GOPATH/bin
install: 
	go install --ldflags '-extldflags "-static"' \
		--ldflags "-X github.com/quan8/lachesisnet/version.GitCommit=`git rev-parse HEAD`" \
		./cmd/lachesisnet

# build compiles and places the binary in /build
build:
	CGO_ENABLED=0 go build \
		--ldflags "-X github.com/quan8/lachesis/version.GitCommit=`git rev-parse HEAD`" \
		-o build/lachesis ./cmd/lachesis/

# dist builds binaries for all platforms and packages them for distribution
dist:
	@BUILD_TAGS='$(BUILD_TAGS)' sh -c "'$(CURDIR)/scripts/dist.sh'"

test: 
	glide novendor | xargs go test

.PHONY: vendor install build dist test
	