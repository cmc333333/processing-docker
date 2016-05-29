FROM java:8-alpine

WORKDIR /processing
RUN apk add --update wget tar \
    && wget --no-check-certificate http://download.processing.org/processing-3.1.1-linux64.tgz \
    && tar -xzf processing-3.1.1-linux64.tgz \
    && ln -s /processing/processing-3.1.1/processing-java processing-java \
    && apk del --purge wget tar \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/processing/processing-java"]
