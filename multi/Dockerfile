FROM golang:1.18-alpine AS build

WORKDIR /app/
COPY main.go .
RUN go build -o /app/main /app/main.go

FROM alpine:3
COPY --from=build /app/main /app/
ENTRYPOINT ["/app/main"]


