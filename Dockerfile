FROM alpine:latest

RUN apk add --no-cache libc6-compat

#ENTRYPOINT ["iconv"]

COPY input.txt /app/input.txt

COPY convert.sh /app/convert.sh

WORKDIR /app

RUN chmod +x convert.sh

RUN ./convert.sh

CMD ["tail", "-f", "/dev/null"]