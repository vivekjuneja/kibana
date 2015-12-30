#!/bin/bash

echo 'setting elastic search hostname to : ' + $ELASTICSEARCH_HOSTNAME

sed 's%window.location.hostname%'\"${ELASTICSEARCH_HOSTNAME}\"'%g ' /web/kibana-3.1.0/config.js > /web/kibana-3.1.0/config.tmp

mv /web/kibana-3.1.0/config.js /web/kibana-3.1.0/config.js.old

mv /web/kibana-3.1.0/config.tmp /web/kibana-3.1.0/config.js

