#!/bin/bash
if [ ! $(ls -A /var/www/html) ]; then
    cd /tmp
    cp Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip /var/www/html/
    cd /var/www/html
    unzip Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip
    rm Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip
fi
