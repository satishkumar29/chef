package "tomcat"

bash 'install_sth' do
user 'root'
cwd '/root'
code <<-EOH
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
cp /rrot/jenkinst.war /usr/share/tomcat/webapps/.
EOH

end

service "tomcat" do
action :stop
action :start
end
