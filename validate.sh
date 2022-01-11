#!/bin/bash
#
#
JAVA_OPTIONS=-Dtks.skipsignlogs=Y
#
$JAVA_HOME/bin/java $JAVA_OPTIONS -jar ../../TKW-x.jar -validate tkw-x.properties

read -n 1 -p "Press any key to continue"
echo
