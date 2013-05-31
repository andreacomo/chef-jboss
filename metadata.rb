maintainer       "Bryan Berry"
maintainer_email "bryan.berry@gmail.com"
license          "Apache v2.0"
description      "Installs/Configures jboss"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1.0"
name	         "jboss"

%w{ java logrotate sudo }.each do |cb|
  depends cb
end

recipe "jboss", "installs jboss from the jboss community site"

%w{ ubuntu centos }.each do |os|
  supports os
end
