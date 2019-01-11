FROM splunk/splunk:7.2.1

LABEL maintainer="tjveil@gmail.com"

RUN mkdir -p /tmp/cockroach-batch \
    && chmod -R 777 /tmp/cockroach-batch \
    && mkdir -p /tmp/cockroach-monitor \
    && chmod -R 777 /tmp/cockroach-monitor

### uncomment for easy testing
# COPY data/test-monitor.log /tmp/cockroach-monitor/test-monitor.log

COPY conf/authorize.conf /opt/splunk/etc/system/local/authorize.conf
COPY conf/datetime.xml /opt/splunk/etc/system/local/datetime.xml
COPY conf/indexes.conf /opt/splunk/etc/system/local/indexes.conf
COPY conf/inputs.conf /opt/splunk/etc/system/local/inputs.conf
COPY conf/props.conf /opt/splunk/etc/system/local/props.conf
COPY conf/ui-tour.conf /opt/splunk/etc/system/local/ui-tour.conf
COPY conf/ui-prefs.conf /opt/splunk/etc/system/local/ui-prefs.conf