FROM kibana:4.2

RUN apt-get update && apt-get install -y netcat

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

ADD kibana.yml /opt/kibana/config/

CMD ["/tmp/entrypoint.sh"]
