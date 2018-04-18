FROM trueosiris/ubuntu-compiler
MAINTAINER tim@chaubet.be

ENV TZ 'Europe/Brussels'

VOLUME ["/mnt/hostvol"]

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
