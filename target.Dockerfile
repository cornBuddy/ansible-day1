FROM centos:7

USER root
RUN echo "root:root" | chpasswd

CMD ["/sbin/init"]
