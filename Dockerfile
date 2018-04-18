FROM trueosiris/ubuntu-compiler
MAINTAINER tim@chaubet.be

ENV TZ 'Europe/Brussels'

VOLUME ["/mnt/hostvol"]

CMD ["/bin/bash"]
