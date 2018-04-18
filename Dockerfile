FROM trueosiris/ubuntu-compiler
MAINTAINER tim@chaubet.be

ENV TZ 'Europe/Brussels'

RUN cd /mnt/hostvol/ \
 && git clone https://github.com/fireice-uk/xmr-stak.git
 && cd xmr-stak \
 && mkdir build \
 && cd build

VOLUME ["/mnt/hostvol"]

CMD ["/bin/bash"]
