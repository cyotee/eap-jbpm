FROM jboss/base-jdk:7

MAINTAINER Robert Greathouse robert.i.greathouse@gmail.com

USER root

RUN mkdir -p /opt/jboss-eap-6.4

COPY installs/jboss-eap-6.4/ /opt/jboss-eap-6.4

RUN chown -R 1001:0 /opt/jboss-eap-6.4

USER 1001

CMD ["/opt/jboss-eap-6.4/bin/standalone.sh"]