FROM python:2.7.15-slim-stretch

COPY requirements.txt kimsufi.py check.sh /opt/

RUN pip install -r /opt/requirements.txt

VOLUME /opt/config.json

WORKDIR /opt

ENTRYPOINT /opt/check.sh
CMD ["KS-1"]
