#!/bin/bash


echo "check if this is a new container" 
if [[ ! -f /.UPDATED ]] 
then
  echo "this is a New deployment"
  echo "update config"
  echo ""
  sed -i "s|\(elasticsearch_url:\s\).*|\1\"http://${ES}:9200\"|" /kb/config/kibana.yml
  echo " the ElasticSearch address is http://${ES}:9200"
  echo ""
  touch /.UPDATED
else 
  echo "already updated, lets get started!"   
fi
echo ""

# run kibana
/kb/bin/kibana 



