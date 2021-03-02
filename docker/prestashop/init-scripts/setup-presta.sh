#!/usr/bin/env bash

rm -rf /var/www/html/install

if [ $PS_FOLDER_ADMIN != "admin" ] && [ -d /var/www/html/admin ]; then
    echo "\n* Renaming admin folder as $PS_FOLDER_ADMIN ...";
    mv /var/www/html/admin /var/www/html/$PS_FOLDER_ADMIN/
fi

if [ $PS_UPDATE_SETTING == 1 ]; then

	sed -ie "s/define('_DB_SERVER_'.*/define('_DB_SERVER_', '$DB_SERVER');/g" /var/www/html/config/settings.inc.php
	sed -ie "s/define('_DB_PASSWD_'.*/define('_DB_PASSWD_', '$DB_PASSWD');/g" /var/www/html/config/settings.inc.php
	sed -ie "s/define('_DB_NAME_'.*/define('_DB_NAME_', '$DB_NAME');/g" /var/www/html/config/settings.inc.php
	sed -ie "s/define('_DB_USER_'.*/define('_DB_USER_', '$DB_USER');/g" /var/www/html/config/settings.inc.php

fi