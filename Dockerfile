FROM busybox:latest
MAINTAINER Ye Wang <ye@users.noreply.github.com>

ADD "https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64" /bin/jq
RUN chmod +x /bin/jq
ENTRYPOINT ["jq"]
