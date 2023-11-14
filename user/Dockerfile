FROM golang:1.18-alpine

RUN mkdir /app
RUN addgroup -S ichwangrup
RUN adduser -S -D -h /app ichwanuser ichwangrup
RUN chown -R ichwanuser:ichwangrup /app
USER ichwanuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go