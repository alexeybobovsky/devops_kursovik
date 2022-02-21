#FROM alpine:3.15
FROM ubuntu:18.04

ENV PYTHONUNBUFFERED=1 \
    MONGO=mongo \
    MONGO_PORT=27017

COPY start.sh /start.sh

#RUN apk add --update --no-cache python3 git bash && ln -sf python3 /usr/bin/python \
#&& python3 -m ensurepip \
#&& pip3 install --no-cache --upgrade pip setuptools \
RUN apt-get update && apt-get install -y python3-pip git \
&& git clone https://github.com/express42/search_engine_ui.git \
&& pip3 install -r search_engine_ui/requirements.txt -r search_engine_ui/requirements-test.txt \
&& chmod 0777 /start.sh && ls -lha

CMD ["/start.sh"]
