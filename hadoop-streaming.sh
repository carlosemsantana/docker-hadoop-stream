#!/bin/bash

HADOOP_STREAMING=/opt/hadoop/share/hadoop/tools/lib

$HADOOP_HOME/bin/hadoop  jar $HADOOP_STREAMING/hadoop-streaming-3.2.2.jar \
    -input /mapred/web_server.log \
    -output /mapred/saida/web_server \
    -mapper mapper.py \
    -reducer reducer.py \
    -file mapper.py \
    -file reducer.py
