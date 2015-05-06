#!/bin/bash


ES_IP_ADDRESS='localhost'
echo "check if this is a new container" 

if [[ ! -f /.UPDATED ]] 
then
  echo "update config"
  echo " sed /kb/config/kibana.yml $ES_IP_ADDRESS"
  
  touch /.UPDATED
else 
  echo "already updated"   
fi

# run kibana
/kb/bin/kibana 



