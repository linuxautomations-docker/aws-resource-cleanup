FROM centos
COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY AWS /AWS
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
