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
| app/etc/env.production.php      |       |   |
| config/deploy/production.rb     |       |   |
| config/deploy.rb                |       |   |

## Deploy

```
bundle exec cap production deploy
```

## Credit
