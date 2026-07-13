#!/bin/bash

PORT=$1

until curl --output /dev/null --silent --head --fail http://localhost:$PORT
do
    echo "Waiting for Selenium Hub..."
    sleep 1
done