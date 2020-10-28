FROM python:3.7

ADD ./src/server.py /

WORKDIR src

COPY src .

CMD [ "python", "server.py" ]
