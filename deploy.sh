#!/bin/bash
if [ ! -f /var/www/html/index.php ]; then
    cd /tmp
    cp Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip /var/www/html/
    cd /var/www/html
    unzip Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip
    rm Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip
fi
