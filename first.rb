file "one.txt" do
action :create
content "hello.........welcome!!"
end

directory "dir1"

package "httpd"

service "httpd" do
action :stop
end

