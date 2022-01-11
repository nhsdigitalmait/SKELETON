#!/bin/bash
#
JAVA_OPTIONS=-Dtks.skipsignlogs=Y
#
# Test tkw properties injection
#JAVA_OPTIONS+=" -Dtks.serverBaseUrl=xxxx"
#JAVA_OPTIONS+=" -Djavax.net.debug=all"

MODE=-httpinterceptor
PROPS=tkw-x.properties

#===================================================================================

$JDK11/bin/java $JAVA_OPTIONS -jar ../../TKW-x.jar $MODE $PROPS
