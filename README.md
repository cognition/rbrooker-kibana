Kibana 
======

Base Docker image to run kibana version 4.0.3



Usage
-----

docker run -d  -it -p 80:5601 -v /opt/kibana:/kb/config -e ES="elasticsearch" --name="kibana" rbrooker/kibana 



Notes
-----

* You must set ES is not set kibana will assume it is localhost
* Exposed Port is Kibana defualt 5601
* Exposed volume to for mounting is "/kb/config" 







Maintained by 
-------------

Ramon Brooker <rbrooker@aetherealmind.com>
