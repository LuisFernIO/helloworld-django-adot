#!/bin/bash

echo "Starting server on port 8000..."
export DJANGO_SETTINGS_MODULE=helloworld.settings
opentelemetry-instrument python manage.py runserver --noreload 0.0.0.0:8000 # INSTRUMENTATION