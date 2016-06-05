FROM ubuntu:16.04

WORKDIR /processing
RUN apt-get update \
    && apt-get install -y wget libxext6 libxrender1 libxtst6 libxi6 libopenal1 \
                          libxxf86vm1 mesa-utils \
    && wget http://download.processing.org/processing-2.2.1-linux64.tgz \
    && tar -xzf processing-2.2.1-linux64.tgz \
    && mv /processing/processing-2.2.1/* /processing/ \
    && apt-get remove -y wget \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/processing/processing-java"]
