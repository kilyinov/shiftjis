FROM --platform=linux/amd64 alpine:latest

RUN apk add --no-cache libc6-compat

#ENTRYPOINT ["iconv"]

#COPY input.txt /app/input.txt

#COPY shift-jis.py /app/shift-jis.py

COPY convert.sh /app/convert.sh

#WORKDIR /app

RUN chmod +x /app/convert.sh

#RUN ./convert.sh

#CMD ["tail", "-f", "/dev/null"]