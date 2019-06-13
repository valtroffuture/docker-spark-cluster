FROM spark-base:2.3.1

COPY start-thrift.sh /

ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_WORKER_LOG /spark/logs
ENV SPARK_MASTER "spark://spark-master:7077"
ENV SPARK_DIR "/spark/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}"

EXPOSE 8081 10000

#CMD ["/bin/bash", "/start-thrift.sh"]

ENTRYPOINT java \
 -Duser.timezone=Etc/UTC \
 -Xmx512m \
 -cp "/spark/conf:/spark/jars/*" \
 org.apache.spark.deploy.SparkSubmit \
# --master local[8] \
 --master spark://spark-master:7077 \
 --conf spark.executor.extraJavaOptions=-Duser.timezone=Etc/UTC \
 --conf spark.cores.max=1 \
 --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 \
 --name "Thrift JDBC/ODBC Server" \
 --executor-memory 512m \
 spark-internal
