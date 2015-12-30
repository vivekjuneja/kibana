#!/bin/bash

echo "Running all Services in order ... "
./set_kibana.sh
./set_dashboard.sh
/usr/bin/twistd -n web --path /web/kibana-3.1.0 --port $1

