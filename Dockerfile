FROM golang:alpine AS build

WORKDIR /app

COPY src/main.go . 

RUN CGO_ENABLED=0 GOOS=linux go build -o /src main.go


FROM scratch

COPY --from=build /src /app/bin

CMD [ "/app/bin" ]