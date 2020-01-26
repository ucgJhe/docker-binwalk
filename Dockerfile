FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && apt install -y curl wget git python3 python unzip
RUN wget http://launchpadlibrarian.net/118041897/cramfsprogs_1.1-6build4_amd64.deb && dpkg -i dpkg -i cramfsprogs_1.1-6build4_amd64.deb
RUN git clone https://github.com/devttys0/binwalk.git /binwalk && cd /binwalk && yes | ./deps.sh && python3 setup.py install
RUN apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /binwalk

ENTRYPOINT ["/usr/local/bin/binwalk"]
