FROM java:8

RUN mkdir /usr/local/spark
ADD http://d3kbcqa49mib13.cloudfront.net/spark-2.0.0-bin-hadoop2.7.tgz /usr/local/
WORKDIR /usr/local/
RUN tar xzvf spark-2.0.0-bin-hadoop2.7.tgz
RUN rm spark-2.0.0-bin-hadoop2.7.tgz
WORKDIR spark-2.0.0-bin-hadoop2.7

ENV PATH=$PATH:/usr/local/spark-2.0.0-bin-hadoop2.7/bin

CMD spark-shell --master local[2]
