FROM ansible/centos7-ansible
VOLUME ["/etc/ansible"]

USER root
COPY config/root_rsa.pub /root/.ssh/id_rsa.pub

RUN echo "root:root" | chpasswd

CMD ["/sbin/init"]
