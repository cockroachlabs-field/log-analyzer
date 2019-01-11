FROM splunk/splunk:7.2.1

LABEL maintainer="tjveil@gmail.com"

RUN mkdir -p /tmp/cockroach-batch
RUN chmod -R 777 /tmp/cockroach-batch

RUN mkdir -p /tmp/cockroach-monitor
RUN chmod -R 777 /tmp/cockroach-monitor
COPY test.log /tmp/cockroach-monitor/test.log

COPY authorize.conf /opt/splunk/etc/system/local/authorize.conf
COPY datetime.xml /opt/splunk/etc/system/local/datetime.xml
COPY indexes.conf /opt/splunk/etc/system/local/indexes.conf
COPY inputs.conf /opt/splunk/etc/system/local/inputs.conf
COPY props.conf /opt/splunk/etc/system/local/props.conf
COPY ui-tour.conf /opt/splunk/etc/system/local/ui-tour.conf
COPY ui-prefs.conf /opt/splunk/etc/system/local/ui-prefs.conf