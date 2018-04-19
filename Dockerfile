FROM trueosiris/ubuntu-compiler
MAINTAINER tim@chaubet.be

ENV TZ 'Europe/Brussels'

RUN git clone https://gist.github.com/TrueOsiris/dfb3ba5b307230251120e407ae0bd111 test \
 && cp test/amd_sdk.sh ./ \
 && rm -R test \
 && chmod +x amd_sdk.sh \
 && ./amd_sdk.sh 

RUN tar -xvjf AMD-SDK.tar.bz2 

RUN rm AMD-SDK.tar.bz2 \
 && ls -hl AMD* 

RUN mv AMD*.sh AMD-APP-SDK-v3.0.linux64.sh \
 && export AMDAPPSDKROOT="/opt/AMDAPPSDK-3.0"
 

VOLUME ["/mnt/hostvol"]

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
