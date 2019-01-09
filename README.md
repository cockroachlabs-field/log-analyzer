docker run -d -p 8000:8000 -e 'SPLUNK_START_ARGS=--accept-license' -e 'SPLUNK_PASSWORD=<password>' splunk/splunk:latest

docker run -d -p 8000:8000 -e 'SPLUNK_START_ARGS=--accept-license' -e 'SPLUNK_PASSWORD=<password>' splunk/splunk:latest

todod
add this to /opt/splunk/etc/system/local/inputs.conf
 
[monitor:///tmp/roachlogs/.../*.log]



[monitor:///tmp/roachlogs/.../*.log]
disabled = false
sourcetype = cockroach
