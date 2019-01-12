FROM splunk/splunk:latest

LABEL maintainer="tjveil@gmail.com"

RUN mkdir -p /tmp/cockroach-batch \
    && chmod -R 777 /tmp/cockroach-batch \
    && mkdir -p /tmp/cockroach-monitor \
    && chmod -R 777 /tmp/cockroach-monitor

### uncomment for easy testing
# ADD data/test-monitor.log /tmp/cockroach-monitor/test-monitor.log

ADD conf/authorize.conf /opt/splunk/etc/system/local/authorize.conf
ADD conf/datetime.xml /opt/splunk/etc/system/local/datetime.xml
ADD conf/indexes.conf /opt/splunk/etc/system/local/indexes.conf
ADD conf/inputs.conf /opt/splunk/etc/system/local/inputs.conf
ADD conf/props.conf /opt/splunk/etc/system/local/props.conf
ADD conf/ui-tour.conf /opt/splunk/etc/system/local/ui-tour.conf
ADD conf/ui-prefs.conf /opt/splunk/etc/system/local/ui-prefs.conf