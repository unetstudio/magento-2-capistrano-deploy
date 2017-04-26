## Magento2 Capistrano Deploy
Deploy Magento 2 site using Capistrano

## Prerequisite

- Ruby 2.0 or higher.

- Project using Git or other source control.

- Bundler gem (global or local gem).

## Documentation

- [How is it made?](https://github.com/unetstudio/magento-2-capistrano-deploy/wiki/How-it's-made)

## Install

```
bundle install
```

## Configuration

| File        | Constant           | Note  |
| ------------- |:-------------:| -----:|
| app/etc/env.production.php      | ADMIN_PATH, MYSQL_HOST, DB_NAME, DB_USERNAME, DB_PASSWORD |   |
| config/deploy/production.rb     | :deploy_to, server, user, role |   |
| config/deploy.rb                | :application, :repo_url, SERVER_USER, SERVER_GROUP, MAGENTO_USERNAME, MAGENTO_PASSWORD |   |

## Deploy

```
bundle exec cap production deploy
```

## Credit
