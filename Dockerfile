FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3-pip ssh

RUN pip3 install ansible

WORKDIR /app

ENTRYPOINT ["/bin/bash"]