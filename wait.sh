#!/bin/bash

PORT=$1

until curl --silent --fail http://localhost:$PORT/status > /dev/null
do
    echo "Waiting for Selenium Hub on port $PORT..."
    sleep 2
done

echo "Selenium Ready!"