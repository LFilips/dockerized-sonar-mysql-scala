#!/usr/bin/env bash

echo "Creating folder for database persistence..."
mkdir ~/mysql-data
echo "Building sonar docker image..."
cd sonar-scala
docker build -t sonar-scala .
cd ../docker-compose/
echo "Running docker compose..."
docker-compose up -d
