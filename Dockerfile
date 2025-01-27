#syntax=docker/dockerfile:1.4
FROM --platform=$BUILDPLATFORM tonistiigi/xx:1.1.0 AS xx

FROM --platform=$BUILDPLATFORM golang:1.20-alpine AS builder
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG TARGETOS
ARG TARGETARCH

# copy xx scripts to the builder stage
COPY --from=xx / /
WORKDIR /app
COPY . .
RUN --mount=target=/go/pkg/mod,type=cache \
    --mount=target=/root/.cache,type=cache \
    xx-go build -ldflags="${GO_LDFLAGS}" -o pizza-oven .

FROM scratch
COPY --from=builder /app/pizza-oven /usr/bin/
CMD ["/usr/bin/pizza-oven"]