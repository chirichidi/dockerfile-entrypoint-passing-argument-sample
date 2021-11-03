docker build -t test .

docker run --rm -e POD_ID='POD_ID' -e DATE_FORMAT='%Y-%m-%d_%H-%M-%S' test



root@DESKTOP-6Q87NVH:/tmp/test# docker run --rm -e POD_ID='POD_ID' -e DATE_FORMAT='%Y-%m-%d_%H-%M-%S' test
java -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=mountpath-heapdump/POD_ID2021-11-03_15-02-22_heapdump.bin -jar /app.jar
