#!/bin/bash

. "/spark/sbin/spark-config.sh"
. "/spark/bin/load-spark-env.sh"

mkdir -p $SPARK_THRIFT_LOG

export SPARK_HOME=/spark

ln -sf /dev/stdout $SPARK_THRIFT_LOG/spark-thrift.out

/spark/sbin/../bin/spark-class org.apache.spark.deploy.worker.Worker --webui-port $SPARK_THRIFT_WEBUI_PORT $SPARK_MASTER >> $SPARK_THRIFT_LOG/spark-thrift.out

#/spark/sbin/start-thriftserver.sh

#/spark/sbin/start-thriftserver.sh
