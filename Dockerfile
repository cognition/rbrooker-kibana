FROM centos:centos7

MAINTAINER Ramon Brooker rbrooker@aetherealmind.com

# Pull in Kibana
ADD kibana-4.0.2-linux-x64.tar.gz /

RUN  mv /kibana-4.0.2-linux-x64 /kb

# Volume config for a custom kibana.yml 
VOLUME ['/kb/config']

# Expose the default port
EXPOSE  5601

# Run kibana 
CMD ["/kb/bin/kibana"]

