composer global require "fxp/composer-asset-plugin:^1.3.1"
composer create-project --repository=composer.json
mysql-ctl start
mysql -u$C9_USER -e "CREATE DATABASE yii2basic /*\!40100 DEFAULT CHARACTER SET utf8 */;"
sed -i -e "s~root~${C9_USER}~g" config/db.php

# to use RBAC insert into console.php and web.php
# 'authManager' => [
	# 'class' => 'yii\rbac\DbManager',
# ],
# and rund folowing line in bash
# php yii migrate --migrationPath=@yii/rbac/migrations --interactive=0
