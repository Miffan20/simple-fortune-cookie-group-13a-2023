# using the Go image as the base image
FROM golang:latest

#setting a container working directory
WORKDIR /app

#copying the mod and sum files
COPY go.mod go.sum ./

#downloading go mod
RUN go mod download

#copying the rest of the go files:
COPY foredis.go main.go util.go ./

#building the application
RUN go build -o backend-app

#exposing the port used
EXPOSE 8000

#run the application

CMD ["./backend-app"]