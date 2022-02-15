FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3-pip git \
  && git clone https://github.com/express42/search_engine_crawler.git
RUN pip3 install -r search_engine_crawler/requirements.txt -r search_engine_crawler/requirements-test.txt
COPY start.sh /start.sh

RUN chmod 0777 /start.sh

CMD ["/start.sh"]

