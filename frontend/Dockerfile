#using golang, the official go runtime
FROM golang:latest

#working directory in the container
WORKDIR /app

#copy the frontend code
COPY . .

#building the frontend application with go command
RUN go build -o main .

#exposing port 8080
EXPOSE 8080

#Running the application
CMD ["./main"]