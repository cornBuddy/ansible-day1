FROM ansible/centos7-ansible
VOLUME ["/etc/ansible"]

USER root
COPY config/hosts /etc/ansible/hosts
RUN echo "root:root" | chpasswd \
    && ssh-keygen -b 2048 -t rsa -q -N "" -f /root/.ssh/id_rsa \
    && eval "$(ssh-agent -s)" \
    && ssh-add /root/.ssh/id_rsa \
    && ansible all -m copy \
    -a "src=/root/.ssh/id_rsa.pub dest=/root/.ssh/authorized_keys mode=0640" \
    -c paramiko \
    --extra-vars "ansible_user=root ansible_password=root"

CMD ["ansible", "all", "-m", "ping", "-c", "paramiko"]
# CMD ["ansible-playbook", "/etc/ansible/playbook.yml", "-c", "paramiko"]
