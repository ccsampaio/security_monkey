#!/bin/bash

# wait the database
sleep 10

cd /usr/local/src/security_monkey
source venv/bin/activate
monkey run_api_server -b 0.0.0.0:${SECURITY_MONKEY_API_PORT:-5000}
