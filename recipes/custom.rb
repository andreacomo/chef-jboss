#
# Cookbook Name:: jboss
# Recipe:: default
# Author:: Bryan W. Berry (<bryan.berry@gmail.com>)
# Copyright 2011, UN Food and Agriculture Organization
#
# license Apache v2.0
#

jboss_home = node['jboss']['home']
jboss_user = node['jboss']['user']
jboss_group = node['jboss']['user']
tarball_name = File.basename(node['jboss']['url'], ".tar.gz")

#directory jboss_parent do
#  group jboss_user
#  owner jboss_user
#  mode "0755"
#end

# get files
bash "put_files" do
  not_if "test -d #{jboss_home}"
  code <<-EOH
  cd /tmp
  wget -c #{node['jboss']['url']}
  tar xzf #{tarball_name}.tar.gz
  mv #{tarball_name} #{jboss_home} 
  EOH
end

# set perms on directory
directory jboss_home do
  group jboss_user
  owner jboss_user
  mode "0755"
end

bash "set permissions" do
  code <<-EOH
  chown -R #{jboss_user}:#{jboss_group} #{jboss_home}
  EOH
end

# template init file
template "/etc/init.d/jboss" do
  source "init_el.erb"
  mode "0755"
  owner "root"
  group "root"
end

# template jboss-log4j.xml

# start service
#service "jboss" do
#  supports :restart => true, :start => true, :stop => true
#end

