FROM sbeliakou/trainings:ansible-manager
VOLUME ["/etc/ansible"]

USER root
RUN echo "root:root" | chpasswd

WORKDIR /etc/ansible
USER devops

CMD ["/sbin/init"]
