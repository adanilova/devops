include_recipe 'app_demo::database'
include_recipe 'app_demo::app-server'
#include_providers 'basic_auth::basic_auth'

package 'unzip'

version = node['wordpress']['version']
shasum = node['wordpress']['shasum']
directory "/srv/wordpress-#{version}" do
  owner 'www-data'
  group 'www-data'
end

execute 'unzip wordpress' do
  action :nothing
  user 'www-data'
  group 'www-data'
  command "unzip /tmp/wordpress-#{version}.zip"
  cwd "/srv/wordpress-#{version}"
end

remote_file "/tmp/wordpress-#{version}.zip" do
  source "https://ru.wordpress.org/wordpress-#{version}.zip"
  checksum shasum
  not_if { File.exists?("/srv/wordpress-#{version}/wordpress") }
  notifies :run, 'execute[unzip wordpress]', :immediately
end

template "/srv/wordpress-#{version}/wordpress/wp-config.php" do
  source 'wp-config.php.erb'
  variables( password: Chef::EncryptedDataBagItem.load('passwords', 'mysql')['password']
  )
end

creds = {'stacy' => '123', 'applejack' => 'equestria'}

basic_auth '/etc/authfile' do
  action :create
  usernames creds
end
