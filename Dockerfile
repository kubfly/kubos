FROM ubuntu:22.04

ENV TZ="Etc/UTC"
ENV DEBIAN_FRONTEND="noninteractive"

RUN set -e\
 && apt-get update\
 && apt-get install -y curl python3-pip\
 && python3 -m pip install --upgrade pip\
 && python3 -m pip install --root-user-action=ignore ansible==7.5.0\
 && mkdir -p /opt/kubos

WORKDIR /opt/kubos

ENTRYPOINT ["bash"]
