FROM ansible/centos7-ansible

VOLUME ["/etc/ansible"]
CMD ["ansible", "all", "-m", "ping"]
# CMD ["ansible-playbook", "-i", "/etc/ansible/playbook.yml", "-c", "ssh"]
