#!/bin/sh

curl --silent -G 'http://192.168.4.55:8086/query?pretty=true' --data-urlencode "db=smokerWue" --data-urlencode "q=SELECT last(\"value\") FROM \"sensor_data\" WHERE (\"sensor\" = 'smoker-temp')" | jq ".results[].series[].values[]| .[1]"
