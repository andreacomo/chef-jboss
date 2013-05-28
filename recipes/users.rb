#
# Cookbook Name:: jboss
# Recipe:: users
#
# Copyright 2009-2011, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "sudo"


jboss_user = node['jboss']['user']
service = "jboss"

user jboss_user do
  action [ :remove, :create ]
end


# this cookbook is giving an error on centos 5.8 because /etc/sudoers.d doesn't exist
#sudo jboss_user do
#  user jboss_user
#  nopasswd true
#  commands ['/etc/init.d/jboss restart']
#
#  template "app.erb"
#  variables(
#            {
#              "name" => jboss_user,
#              "service" => service
#            }
#  )
#end
