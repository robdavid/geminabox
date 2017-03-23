FROM ubuntu:16.04
MAINTAINER rob.j.david@googlemail.com

RUN apt-get update -y
RUN apt-get install ruby -y
RUN gem install geminabox
COPY assets/run_geminabox /usr/sbin
COPY assets/geminabox /etc/geminabox
RUN chmod +x /usr/sbin/run_geminabox
RUN mkdir --parents /var/lib/geminabox-data

EXPOSE 9292
VOLUME /var/libgeminabox-data
CMD /usr/sbin/run_geminabox
