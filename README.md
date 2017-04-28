## Magento2 Capistrano Deploy
Deploy Magento 2 site using Capistrano

## Prerequisite

- Ruby 2.0 or higher.

- Project using Git or other source control.

- Bundler gem (global or local gem).

## Documentation

- [How is it made?](https://github.com/unetstudio/magento-2-capistrano-deploy/wiki/How-it's-made)

- [Magento 2 Capistrano Deploy Slideshare](https://www.slideshare.net/DucHuu1/magento-2-capistrano-deploy)

## Install

Using bundler for install dependencies gem

```
bundle install
```

## Configuration

| File        | Constant           |
| ------------- |:-------------:|
| app/etc/env.production.php      | ADMIN_PATH, MYSQL_HOST, DB_NAME, DB_USERNAME, DB_PASSWORD |
| config/deploy/production.rb     | :deploy_to, server, user, role |
| config/deploy.rb                | :application, :repo_url, SERVER_USER, SERVER_GROUP, MAGENTO_USERNAME, MAGENTO_PASSWORD |

## Custom Tasks

- Upload adminer.php: Do not use it for production.

- Copy config.php: The Magento project must be contain config.php.dist inside app/etc/ folder.

- Restart PHP FPM: To flush cache of Zend Opcache extension.

## Deploy

Single application server deploy for each stage, e.g for production:

```
bundle exec cap production deploy
```

## References

[https://github.com/bundler/bundler](https://github.com/bundler/bundler)

[https://github.com/capistrano/capistrano](https://github.com/capistrano/capistrano)

[https://github.com/davidalger/capistrano-magento2](https://github.com/davidalger/capistrano-magento2)
