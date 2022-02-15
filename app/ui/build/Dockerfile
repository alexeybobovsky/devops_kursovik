FROM alpine:3.15
# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 git bash && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

#RUN apt-get update
#RUN apt-get install -y git python3-pip
RUN git clone https://github.com/express42/search_engine_ui.git \
  && pip install -r search_engine_ui/requirements.txt -r search_engine_ui/requirements-test.txt
#COPY mongod.conf /etc/mongod.conf
#COPY db_config /reddit/db_config
COPY start.sh /start.sh

#RUN cd /reddit && rm Gemfile.lock && bundle install
RUN chmod 0777 /start.sh

CMD ["/start.sh"]
