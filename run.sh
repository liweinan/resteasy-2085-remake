#!/bin/sh

export MAVEN_OPTS='-Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005'
mvn tomcat7:run
