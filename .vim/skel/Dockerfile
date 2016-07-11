## This is a sample Dockerfile

FROM debian:jessie
MAINTAINER Wesley R. Silva <wesley.it@gmail.com>
ADD my_app.sh /my_app.sh
ENV LANG en.us_utf-8
VOLUME /data
USER someuser
WORKDIR /home/someuser
RUN bash -c "/my_app.sh"
EXPOSE 27017
CMD service xpto start

