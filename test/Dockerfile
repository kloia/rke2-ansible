FROM centos:7

RUN yum install -y openssh-server && ssh-keygen -A && echo "root:kloia" | chpasswd && ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -P ""

ADD test_id_rsa.pub /root/.ssh/authorized_keys

CMD ["/usr/sbin/sshd", "-D"]