#!/bin/bash

#1 upload Apache Kafka as submodule
git submodule init
git submodule update

#2 get branch 0.10.1
#cd kafka/
#git checkout 0.10.1
#cd ..

#3 fix  build.gradle
cp -f ./_kafka_fixed_build_gradle kafka/build.gradle

#4 upload gradle wrapper
gradle wrapper

#5 build project
./gradlew clean build -x test -x checkstyleMain -x checkstyleTest --info