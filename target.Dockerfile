FROM sbeliakou/trainings:centos-node-2

USER root
RUN echo "root:root" | chpasswd

CMD ["/sbin/init"]
