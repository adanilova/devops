#
# Cookbook Name:: app_demo
# Recipe:: default
#
# Copyright 2016, Express42
#
# All rights reserved - Do Not Redistribute
#
sysctl_param 'fs.file-max' do
  value node['app-demo']['max-files']
end

package "nginx" do
  action :install
end

service "nginx" do
  action [:enable, :start]
end

template "/usr/share/nginx/html/index.html" do
  source "index.html.erb"
  variables(
      food: node['app-demo']['food']
    )
end

template "/usr/share/nginx/html/countries.html" do
  source "countries.html.erb"
  variables(
    countries: data_bag('countries')
  )
end

data_bag('countries').each do |country|
  template "/usr/share/nginx/html/#{country}.html" do
    source "country.html.erb"
    variables(
      country: country,
      cities: data_bag_item('countries', country)['cities']
    )
  end
end
