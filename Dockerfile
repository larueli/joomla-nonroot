FROM larueli/php-base-image:7.4

ARG JOOMLA_VERSION=3.9.26
ENV JOOMLA_VERSION=${JOOMLA_VERSION}

USER 0
COPY deploy.sh /docker-entrypoint-init.d/
RUN cd /var/www/html && wget https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip && unzip Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip && \
    mv Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip /tmp/ && \
    chgrp -R 0 /var/www/html && chmod -R g+rwx /var/www/html

USER 545622:0