# config valid only for current version of Capistrano
lock "3.8.1"

set :application, "my_app_name"
set :repo_url, "git@example.com:me/my_repo.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"
set :linked_files, [
 'app/etc/env.php',
 'pub/.htaccess'
]

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
set :linked_dirs, [
 'pub/media',
 'var'
]

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

set :config_files, %w{app/etc/env.php pub/.htaccess}
# push link files after check them exist.
before 'deploy:check:linked_files', 'config:push'

set :magento_deploy_setup_role, :main
set :magento_deploy_cache_shared, true
set :magento_deploy_languages, ['en_US']
set :magento_deploy_themes, []
set :magento_deploy_composer, true
set :magento_deploy_production, true
set :magento_deploy_maintenance, true
set :magento_deploy_confirm, []

set :magento_deploy_chmod_d, '0755'
set :magento_deploy_chmod_f, '0644'
set :magento_deploy_chmod_x, ['bin/magento']
set :file_permissions_roles, :all
set :file_permissions_paths, ["pub/static", "var"]
set :file_permissions_users, ["SERVER_USER"] 
set :file_permissions_groups, ["SERVER_GROUP"]
set :file_permissions_chmod_mode, "0777"
before "deploy:updated", "deploy:set_permissions:acl"

set :magento_auth_public_key, 'MAGENTO_USERNAME'
set :magento_auth_private_key, 'MAGENTO_PASSWORD'

before 'magento:deploy:verify', 'magento2:copy_config'
after 'magento:maintenance:disable', 'magento2:restart_php_fpm'