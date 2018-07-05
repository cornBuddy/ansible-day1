FROM centos:7

USER root
COPY config/root_rsa.pub /root/.ssh/authorized_hosts
RUN echo "root:root" | chpasswd \
    && chmod 0640 /root/.ssh/authorized_hosts

CMD ["/sbin/init"]
