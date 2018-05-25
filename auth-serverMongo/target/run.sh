#!/bin/bash

# The environment variables are already set up by the Dockerfile
java -Djava.security.egd=file:/dev/urandom -Dspring.profiles.active=docker -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n -jar ${APP_JAR_NAME}-${APP_JAR_VERSION}.jar