FROM debian:stretch as builder

RUN apt-get update && \
    apt-get install -y cron python-pip && \
    pip install elasticsearch-curator && \
    touch /var/log/cron.log

COPY . /
COPY /curator /etc/cron.daily/curator

RUN chmod a+x /etc/cron.daily/curator

CMD ["/entrypoint.sh"]
