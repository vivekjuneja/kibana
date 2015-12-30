#!/bin/bash

echo 'setting log type to job name : ' + $LOGID

sed 's%logid%'${LOGID}'%g ' /web/kibana-3.1.0/app/dashboards/dashboard.json > /web/kibana-3.1.0/app/dashboards/dashboard.tmp

mv /web/kibana-3.1.0/app/dashboards/dashboard.json /web/kibana-3.1.0/app/dashboards/dashboard.json.old

mv /web/kibana-3.1.0/app/dashboards/dashboard.tmp /web/kibana-3.1.0/app/dashboards/default.json


