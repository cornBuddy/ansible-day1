FROM ansible/centos7-ansible
VOLUME ["/etc/ansible"]

USER root
COPY config/hosts /etc/ansible/hosts
COPY config/root_rsa /root/.ssh/id_rsa
COPY config/root_rsa.pub /root/.ssh/id_rsa.pub

RUN echo "root:root" | chpasswd \
    && ssh-add /root/.ssh/id_rsa

CMD ["/sbin/init"]
