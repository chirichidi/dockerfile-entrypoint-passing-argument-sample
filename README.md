docker build -t test .
docker run --rm -e POD_ID='POD_ID' -e DATE_FORMAT='%Y-%m-%d_%H-%M-%S' test


#> docker run --rm -e POD_ID='POD_ID' -e DATE_FORMAT='%Y-%m-%d_%H-%M-%S' test
#> java -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=mountpath-heapdump/POD_ID2021-11-03_15-02-22_heapdump.bin -jar /app.jar

Or, ENTRYPOINT ["bash", "-c", "java -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=mountpath-heapdump/$MY_POD_ID$(date +'%Y-%m-%d_%H-%M-%S')_heapdump.bin -jar /app.jar"] in Dockerfile
