FROM spark-base:2.3.1

COPY start-thrift.sh /

ENV SPARK_THRIFT_WEBUI_PORT 8081
ENV SPARK_THRIFT_LOG /spark/logs
ENV SPARK_MASTER "spark://spark-master:7077"

EXPOSE 8081

CMD ["/bin/bash", "/start-thrift.sh"]
