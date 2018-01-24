FROM centos
COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY AWS /AWS
RUN yum install python2-pip -y 
RUN pip install awscli 
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
