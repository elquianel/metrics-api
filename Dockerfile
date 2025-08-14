# BUILDER
FROM golang:1.23-alpine AS builder

WORKDIR /app

RUN apk add --no-cache git

COPY go.mod .
RUN go mod download

COPY . .

RUN go build -o main ./cmd/api

RUN ls -la /app

# RUNTIME 

FROM alpine:3.19

WORKDIR /app

COPY --from=builder /app/main .

EXPOSE 8080

CMD ["./main"]

