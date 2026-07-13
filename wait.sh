#!/bin/bash

until curl --silent --fail http://localhost:4444/status > /dev/null
do
    echo "Waiting for Selenium Hub..."
    sleep 2
done

echo "Selenium Hub is ready!"