FROM jboss/base-jdk:7

MAINTAINER Robert Greathouse robert.i.greathouse@gmail.com

USER root

RUN mkdir -p /opt/jboss/jboss-eap-6.4  && \
    mkdir -p /opt/jboss/.niogit/system.git/refs && \
    chown -R 1001:0 /opt/jboss

COPY installs/jboss-eap-6.4/ /opt/jboss/jboss-eap-6.4

VOLUME /opt/jboss/.niogit/

USER 1001

CMD ["/opt/jboss/jboss-eap-6.4/bin/standalone.sh"]