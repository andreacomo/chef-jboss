jboss_home = node['jboss']['home']
jboss_admin = node['jboss']['admin_user']
jboss_pass = node['jboss']['admin_pass']

#jboss re-reads mgmt-users.properties based on last modified date, no need to restart
execute "#{jboss_home}/bin/add-user.sh --silent=true #{jboss_admin} #{jboss_pass}" do
  user node['jboss']['user']
  #not_if "grep '#{jboss_admin}:' #{jboss_home}/standalone/configuration/mgmt-users.properties"
  only_if { jboss_admin and jboss_pass }
end

