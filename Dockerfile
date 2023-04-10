FROM chenzaichuang/zcchen_xssh:latest
ARG USER=root
USER $USER
RUN apt-get -y install curl unzip screen nginx && \
    echo 'hello world' > /var/www/html/index.html
ADD nginx.conf /etc/nginx/nginx.conf
ADD config.sh /root/
ADD run.sh /root/
EXPOSE 80
RUN chmod +x /root/*.sh
CMD ["/bin/bash", "/root/run.sh"]
