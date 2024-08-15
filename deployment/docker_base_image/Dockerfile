# Use the official Alpine Linux image as a base
FROM alpine:latest

# Install Go, Netcat, and other utilities
RUN apk add --no-cache \
    curl \
    bash \
    netcat-openbsd \
    git \
    busybox-extras \
    && curl -sSL https://go.dev/dl/go1.23.0.linux-amd64.tar.gz | tar -xz -C /usr/local \
    && ln -s /usr/local/go/bin/go /usr/bin/go \
    && ln -s /usr/local/go/bin/gofmt /usr/bin/gofmt

# Set environment variables
ENV GOPATH=/go
ENV PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# Create necessary directories
RUN mkdir -p $GOPATH/src $GOPATH/bin

# Set the working directory
WORKDIR $GOPATH

# Verify the installation
RUN go version && go env

# Add a default command
CMD ["/bin/sh"]

