#!/bin/bash
_CP=../conf/

for i in ../lib/* ; do
    if [ "$_CP" != "" ]; then
          _CP=${_CP}:$i
    else
         _CP=$i
    fi

done

for i in ../conf/*.* ; do
    if [ "$_CP" != "" ]; then
          _CP=${_CP}:$i
    else
         _CP=$i
    fi

done
    echo "starting chicory client ...... "

    echo "--------------------------------------------------------"
    java -Xms64m -Xmx254m -cp $_CP:. hms.kite.samples.client.LbsReceiver $@



