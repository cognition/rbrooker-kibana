FROM centos:centos7

MAINTAINER Ramon Brooker rbrooker@aetherealmind.com

# for setting
ENV KIBANA=kibana-4.0.2-linux-x64.tar.gz
ENV KB_VERSION_MAJOR=4.0
ENV KB_VERISON_MINOR=4.0.2

# install needed tools
RUN yum install -y curl 

RUN curl https://download.elastic.co/kibana/kibana/kibana-$KB_VERISON_MINOR-linux-x64.tar.gz | tar -xz
RUN mv kibana-$KB_VERISON_MINOR-linux-x64 kb

# Clean up
RUN yum remvoe -y curl
RUN yum clean -y all

# Run Script
COPY run.sh /




# Volume config for a custom kibana.yml 
VOLUME ['/kb/config']

# Expose the default port
EXPOSE  5601

# Run kibana 
CMD ["/run.sh"]

