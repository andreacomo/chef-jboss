#
# Cookbook Name:: jboss
# Recipe:: standalone_cfg
# Author:: Andrea Como (<andrea.como@gmail.com>)
# Copyright 2012, Food and Agriculture Organization of the United Nations
#
# license Apache v2.0
#
jboss_home = node['jboss']['home']
jboss_user = node['jboss']['user']

template "#{jboss_home}/standalone/configuration/standalone.xml" do
  source 'standalone.xml.erb'
  owner jboss_user
end