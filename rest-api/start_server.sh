#!/bin/bash
source venv/bin/activate
gunicorn -b 0.0.0.0:8001 --workers=2 --access-logfile logs/gunicorn-access.log --error-logfile logs/gunicorn-error.log server:app --daemon --name=primer-server-rest-api-deamon --proxy-protocol --threads 12
