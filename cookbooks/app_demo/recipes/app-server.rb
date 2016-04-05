include_recipe "php-fpm::install"
include_recipe "nginx::official-repo"
include_recipe "nginx"

package 'php5-mysql'

php_fpm_pool 'www' do
  user 'www-data'
  listen '127.0.0.1:9000'
  php_options(
    'php_admin_flag[log_errors]'=>'on',
    'php_admin_value[memory_limit]'=>'32M'
    )
end
nginx_site 'wordpress' do
  variables(
   version: node['wordpress']['version']
  )
end
