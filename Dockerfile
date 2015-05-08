FROM ubuntu:trusty
#FROM rbrooker/kibana-base

MAINTAINER Ramon Brooker rbrooker@aetherealmind.com

ENV DEBIAN_FRONTEND noninteractive

# for setting
ENV KIBANA=kibana-4.0.2-linux-x64.tar.gz
ENV KB_VERSION_MAJOR=4.0
ENV KB_VERISON_MINOR=4.0.2

# install needed tools
RUN apt-get update && apt-get install -y curl 

RUN curl https://download.elastic.co/kibana/kibana/kibana-$KB_VERISON_MINOR-linux-x64.tar.gz | tar -xz
RUN mv kibana-$KB_VERISON_MINOR-linux-x64 kb



# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Run Script
COPY run.sh /
RUN chmod +x /run.sh

# add a time stamp
COPY set-time.sh /
RUN chmod +x /set-time.sh
RUN /set-time.sh

# Volume config for a custom kibana.yml 
VOLUME ['/kb/config']

# Expose the default port
EXPOSE  5601

# Run kibana 
CMD ["/run.sh"]

