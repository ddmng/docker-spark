FROM alpine:3.3
MAINTAINER daniele.diminica@gmail.com

ENV SPARK_PATH /opt/spark
ENV SPARK_VER 2.1.1
ENV HADOOP_VER 2.7
ENV WD spark-${SPARK_VER}-bin-hadoop${HADOOP_VER}
ENV ARCHIVE_NAME ${WD}.tgz

RUN mkdir -p ${SPARK_PATH}
WORKDIR ${SPARK_PATH}

RUN wget http://d3kbcqa49mib13.cloudfront.net/${ARCHIVE_NAME}
RUN tar xzvf ${ARCHIVE_NAME} && rm ${ARCHIVE_NAME}

RUN apk add --no-cache bash procps coreutils openjdk8-jre-base

WORKDIR ${WD}

COPY run_master.sh ${SPARK_PATH}/${WD}
COPY run_slave.sh ${SPARK_PATH}/${WD}
EXPOSE 7077 6066 8080 4040
