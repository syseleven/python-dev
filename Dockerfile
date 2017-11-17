FROM python:2.7

LABEL maintainer "Olaf Klischat <o.klischat@syseleven.de>"

COPY ./gitlab-auth/* /root/.ssh/
