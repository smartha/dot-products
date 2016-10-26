#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'tomcat'
package 'tomcat-webapps'
package 'tomcat-admin-webapps'

template "/etc/tomcat/tomcat-users.xml" do
  owner "root"
  group "root"
  mode "644"
  source "tomcat-users.xml.erb"
end

# Start tomcat
execute 'systemctl start tomcat.service' do
  command '/bin/systemctl start tomcat.service'
  user 'root'
end

# Make sure tomcat starts on reboot
execute 'systemctl enable tomcat.service' do
  command '/bin/systemctl enable tomcat.service'
  user 'root'
end


