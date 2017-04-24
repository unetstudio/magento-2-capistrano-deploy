# Magento2-Capistrano-Deploy
Deploy Magento 2 site using Capistrano

## How is it made?

### Create a Ruby project

```bash
bundle init
```

### Install Capistrano

First, add Capistrano gem to the Gemfile:

```ruby
group :development do
    gem "capistrano","~> 3.8"
end
```

Then, capify a project:

```
bundle install
bundle exec cap install
```