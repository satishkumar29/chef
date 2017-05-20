#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package "tomcat"

bash 'install_sth' do
user 'root'
cwd '/root'
code <<-EOH
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
cp /root/jenkins.war /usr/share/tomcat/webapps/.
EOH

end

service "tomcat" do
action :stop
action :start
end


template '/var/www/html/index.html' do
source 'index.html.erb'
end
