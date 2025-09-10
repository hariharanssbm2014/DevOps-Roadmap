#!/bin/bash

URL=$1
echo $URL
HTTP_CODE=`curl -s -w "%{http_code}" -L $URL`
echo $HTTP_CODE


if [ $HTTP_CODE -gt "200" ] && [ $HTTP_CODE -lt "300" ]; then
  echo "Site Reachable..!"
elif [ $HTTP_CODE -gt "300" ] && [ $HTTP_CODE -lt "400" ]; then
  echo "Site Redirecting..!"
elif [ $HTTP_CODE -gt "400" ] && [ $HTTP_CODE -lt 500]; then
  echo "Client Error..!"
elif [ $HTTP_CODE -gt "500" ] && [ $HTTP_CODE -lt 600]; then
echo "Internal Server Error..!"
else
 echo "Unexpected Failure..!"
fi
