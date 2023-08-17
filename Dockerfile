FROM golang:1.21 as builder

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -v -o frontend

FROM alpine:3.14

WORKDIR /app

COPY --from=builder /app/frontend /app/

EXPOSE 8080

# Command to run the executable.
CMD ["./frontend"]
