nginx_site 'forum.example.com' do
  action :enable
  template 'forum-nginx.erb'
  variables(
    :listen_ip => '10.0.0.10',
    :remote_ips => [ '10.0.0.2', '10.0.0.4' ]
  )
end
