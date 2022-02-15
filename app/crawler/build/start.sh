#!/usr/bin/env bash
export MONGO="mongo"
export MONGO_PORT=27017
export RMQ_HOST="rabbit"
export RMQ_QUEUE="search"
export RMQ_USERNAME="guest"
export RMQ_PASSWORD="guest"
export CHECK_INTERVAL=30
export EXCLUDE_URLS=".*github.com"
export URL="https://vitkhab.github.io/search_engine_test_site/"
cd search_engine_crawler/crawler
python3 -u crawler.py $URL

