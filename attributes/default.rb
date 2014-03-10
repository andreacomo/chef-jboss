#
# Cookbook Name:: jboss
# Attributes:: default
# Author:: Bryan W. Berry (<bryan.berry@gmail.com>)
# Copyright 2011, UN Food and Agriculture Organization
#
# license Apache v2.0
#


default['jboss']['home'] = "/usr/local/jboss"
default['jboss']['version'] = '7.1.1'
default['jboss']['url'] = "http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz" 
default['jboss']['checksum'] = "88fd3fdac4f7951cee3396eff3d70e8166c3319de82d77374a24e3b422e0b2ad"

#default['jboss']['admin_user'] = ''
#default['jboss']['admin_pass'] = ''

default['jboss']['application'] = 'jboss'
default['jboss']['config'] = 'standalone'
default['jboss']['script'] = 'standalone.sh'
default['jboss']['manage_config_file'] = true

default['jboss']['jdbc']['user'] = 'sa'
default['jboss']['jdbc']['passwd'] = ''
default['jboss']['jdbc']['encrypted-password'] = false
default['jboss']['jdbc']['schema'] = ''
default['jboss']['jdbc']['jndi_name'] = ''
default['jboss']['jdbc']['ds-name'] = default['jboss']['jdbc']['schema']
default['jboss']['jdbc']['host'] = 'localhost'
default['jboss']['jdbc']['transaction_isolation'] = nil
default['jboss']['jdbc']['driver']['name'] = 'h2'
default['jboss']['jdbc']['driver']['module'] = 'com.h2database.h2'
default['jboss']['jdbc']['driver']['version'] = ''
default['jboss']['jdbc']['driver']['class'] = 'org.h2.jdbcx.JdbcDataSource'
default['jboss']['jdbc']['pool']['min-pool-size'] = 20
default['jboss']['jdbc']['pool']['max-pool-size'] = 20
default['jboss']['jdbc']['pool']['prefill'] = true
default['jboss']['jdbc']['statement']['share'] = true
default['jboss']['jdbc']['statement']['cache-size'] = 20
default['jboss']['datasources'] = []
default['jboss']['queues'] = []
default['jboss']['drivers'] = []
default['jboss']['extra_modules'] = []
default['jboss']['jms_queues'] = []
default['jboss']['web']['instance-id'] = 'jboss711'
default['jboss']['web']['native'] = false
