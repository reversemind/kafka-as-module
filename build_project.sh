#!/bin/bash

# build all modules include Kafka

./gradlew clean build -x test -x checkstyleMain -x checkstyleTest --info