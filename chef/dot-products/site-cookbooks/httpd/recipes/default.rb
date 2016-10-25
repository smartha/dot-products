#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'httpd'

# Change permissions on /var/www/html so ec2-user can write to it
directory '/var/www/html' do
  owner 'root'
  group 'root'
  mode '777'
  action :create
end

template "/etc/httpd/conf/httpd.conf" do
  owner "root"
  group "root"
  mode "644"
  source "httpd.conf.erb"
end

# Make sure httpd starts on reboot
execute 'systemctl enable httpd.service' do
  command '/bin/systemctl enable httpd.service'
  user 'root'
end

# Reload httpd
execute 'systemctl reload httpd.service' do
  command '/bin/systemctl reload httpd.service'
  user 'root'
end
