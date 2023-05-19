#!/bin/bash

curl -u "$ELASTICUSER:$ELASTICPASS" -k -X GET "$SCHEMA://$ELASTICHOST/_data_stream?pretty=true" | grep "$INDEX_PREFIX" | grep -v '.ds-filebeat' | sort -u | awk -F'"' '{print$4}' > index.list

TODAY=`date +%Y.%m.%d`
RETENTION_DATE=`date -d "-$ELASTICRETENTION days" +%Y.%m.%d`

#indices to keep
echo ${TODAY} > not_delete

while [ "${RETENTION_DATE}" != "${TODAY}" ]
do
        echo ${RETENTION_DATE} >> not_delete
        ELASTICRETENTION=$((ELASTICRETENTION-1))
        RETENTION_DATE=`date -d "-$ELASTICRETENTION days" +%Y.%m.%d`
done

for LINE in `cat not_delete`
do
        sed -i "/$LINE/d" index.list
done

for DELETE_INDEX in `cat index.list`
do
        echo "`date` - Deletando indice $DELETE_INDEX"
        curl -u "$ELASTICUSER:$ELASTICPASS" -k -X DELETE "$SCHEMA://$ELASTICHOST/_data_stream/$DELETE_INDEX?pretty"
done
