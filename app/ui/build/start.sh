#!/usr/bin/env bash
export MONGO=mongo
export MONGO_PORT=27017
cd search_engine_ui/ui
FLASK_APP=ui.py gunicorn ui:app -b 0.0.0.0
