Kibana 
======

Base Docker image to run kibana version 4.0.3



Usage
-----

docker run -d  -it -p 5601:5601 -e ES_IP_ADDRESS=<address_of_elasticsearch> --name="kibana" --volume=/opt/kibana:/kb/config  rbrooker/kibana 



Notes
-----

* You must set ES_IP_ADDRESS is not set kibana will assume it is localhost
* Exposed Port is Kibana defualt 5601
* Exposed volume to for mounting is "/kb/config" 







Maintained by 
-------------

Ramon Brooker <rbrooker@aetherealmind.com>
