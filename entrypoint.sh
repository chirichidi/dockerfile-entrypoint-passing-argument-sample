#!/bin/bash

echo java -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=mountpath-heapdump/$POD_ID$(date +$DATE_FORMAT)_heapdump.bin -jar /app.jar
