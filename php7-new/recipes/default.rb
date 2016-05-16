execute "add external PPA for php 7.0 packages" do
    command "sudo add-apt-repository ppa:ondrej/php"
end

execute "update the local package cache" do
    command "sudo apt-get update"
end

execute "php 7.0" do
    command "sudo apt-get -y install php7.0"
    returns [0, 100]
end

execute "php 7.0-mysql" do
    command "sudo apt-get -y install php7.0-mysql"
    returns [0, 100]
end

service "apache2" do
    action :restart
end