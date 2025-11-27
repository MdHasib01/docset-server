# Stage 1 - build
FROM golang:1.24.6-alpine AS builder
WORKDIR /app

# Install git for go mod and build deps; ca-certificates for HTTPs
RUN apk add --no-cache git ca-certificates

# cache go modules
COPY go.mod go.sum ./
RUN go mod download

# copy source and build
COPY . .
# build a statically linked binary (if using CGO be careful)
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /app/server .

# Stage 2 - minimal runtime image
FROM alpine:3.18
RUN apk add --no-cache ca-certificates
WORKDIR /root/
COPY --from=builder /app/server .
# create non-root user (optional but recommended)
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 8080
ENV PORT=8080
CMD ["./server"]
