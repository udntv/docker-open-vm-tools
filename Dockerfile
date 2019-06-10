FROM ubuntu

RUN apt-get update && \
    apt-get install -y open-vm-tools && \
    apt-get clean

CMD ["/usr/bin/vmtoolsd", "--", "--background", "/var/run/vmtoolsd.pid"]
