#
# Cookbook Name:: memcached
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'memcached'

# Start memcached
execute 'systemctl start memcached.service' do
  command '/bin/systemctl enable memcached.service'
  user 'root'
end

# Make sure memcached starts on reboot
execute 'systemctl enable memcached.service' do
  command '/bin/systemctl enable memcached.service'
  user 'root'
end


