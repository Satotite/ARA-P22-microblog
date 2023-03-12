#FROM debian:latest
FROM python:3-alpine
#RUN apt-get update -y
#RUN apt-get install -y python3-pip
COPY ./requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt
ENV FLASK_APP microblog.py
COPY ./ /microblog
WORKDIR /microblog
CMD ["./boot.sh"]