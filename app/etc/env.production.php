<?php
return array (
  'backend' => 
  array (
    'frontName' => '<ADMIN_PATH>',
  ),
  'db' => 
  array (
    'connection' => 
    array (
      'indexer' => 
      array (
        'host' => '<MYSQL_HOST>',
        'dbname' => '<DB_NAME>',
        'username' => '<DB_USERNAME>',
        'password' => '<DB_PASSWORD>',
        'model' => 'mysql4',
        'engine' => 'innodb',
        'initStatements' => 'SET NAMES utf8;',
        'active' => '1',
        'persistent' => NULL,
      ),
      'default' => 
      array (
        'host' => '<MYSQL_HOST>',
        'dbname' => '<DB_NAME>',
        'username' => '<DB_USERNAME>',
        'password' => '<DB_PASSWORD>',
        'model' => 'mysql4',
        'engine' => 'innodb',
        'initStatements' => 'SET NAMES utf8;',
        'active' => '1',
      ),
    ),
    'table_prefix' => '',
  ),
  'queue' => 
  array (
    'amqp' => 
    array (
      'host' => '',
      'port' => '',
      'user' => '',
      'password' => '',
      'virtualhost' => '/',
      'ssl' => '',
    ),
  ),
  'crypt' => 
  array (
    'key' => '78c9bdee1a93b8693d2fe7cb2d0c6aa9',
  ),
  'session' => 
  array (
    'save' => 'files',
  ),
  'resource' => 
  array (
    'default_setup' => 
    array (
      'connection' => 'default',
    ),
  ),
  'x-frame-options' => 'SAMEORIGIN',
  'MAGE_MODE' => 'production',
  'cache_types' => 
  array (
    'config' => 1,
    'layout' => 1,
    'block_html' => 1,
    'collections' => 1,
    'reflection' => 1,
    'db_ddl' => 1,
    'eav' => 1,
    'customer_notification' => 1,
    'target_rule' => 1,
    'full_page' => 1,
    'config_integration' => 1,
    'config_integration_api' => 1,
    'translate' => 1,
    'config_webservice' => 1,
    'compiled_config' => 1,
  ),
  'install' => 
  array (
    'date' => 'Fri, 13 Jan 2017 07:57:37 +0000',
  ),
);