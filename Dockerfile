FROM centos:7

WORKDIR /opt/test/
RUN mkdir -p /opt/test/config

COPY container-assets/config/* /opt/test/config
COPY container-assets/entrypoint /usr/bin

RUN chgrp -R 0 /opt/test && \
    chmod -R g=u /opt/test

ENTRYPOINT ["/bin/entrypoint"]
