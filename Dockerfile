FROM centos
COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY AWS /AWS
RUN yum install http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
RUN yum install python2-pip -y 
RUN pip install awscli 
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
