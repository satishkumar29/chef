package "tomcat"

execute 'jenkins' do
command 'wget -O /usr/share/tomcat/webapps/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo;\
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key'
end

service "tomcat" do
action :stop
end 

