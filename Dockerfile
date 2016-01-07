FROM clusterhq/kibana

MAINTAINER vivek@gsshop.com
USER root

WORKDIR /web/kibana-3.1.0/app/dashboards/

# Remove all pre-existing Dashboards
RUN rm -rf /web/kibana-3.1.0/app/dashboards/*

ADD dashboard.json dashboard.json

WORKDIR /tmp 



ADD set_kibana.sh set_kibana.sh
ADD set_dashboard.sh set_dashboard.sh
ADD run_all.sh run_all.sh

CMD ["./run_all.sh"]
