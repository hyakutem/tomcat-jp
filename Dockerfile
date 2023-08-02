FROM tomcat:8.0-jre8

COPY sources.list /etc/apt/sources.list

RUN apt-get update \
 && apt-get install -y locales \
 && sed -i -E 's/# (ja_JP.UTF-8)/\1/' /etc/locale.gen \
 && locale-gen

ENV LANG=ja_JP.UTF-8
