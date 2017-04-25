namespace :magento2 do

  desc "Upload adminer.php"
  task :add_adminer do
    on roles(:all) do |host|
      if !test("[ -f #{release_path}/pub/adminer.php ]")
        upload! "#{Dir.pwd}/pub/adminer.php" , "#{release_path}/pub/adminer.php"
      end
    end
  end

  desc "Copy config.php"
  task :copy_config do
    on roles(:all) do |host|
      if !test("[ -f #{release_path}/app/etc/config.php ]") and test("[ -f #{release_path}/app/etc/config.php.dist ]")
        execute :cp, "-r", "#{release_path}/app/etc/config.php.dist", "#{release_path}/app/etc/config.php"
      end
    end
  end

  desc "Restart PHP FPM"
  task :restart_php_fpm do
    on roles(:all), in: :sequence, wait: 1 do
      execute :sudo, 'service php7.0-fpm restart'
    end
  end

end
