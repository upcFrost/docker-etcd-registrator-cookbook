#
# Cookbook Name:: docker-etcd-registrator
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['nodejs']['install_method'] = 'binary'
node.default['nodejs']['npm']['install_method'] = 'embedded'
node.default['nodejs']['version'] = '5.10.0'
node.default['nodejs']['binary']['checksum']['linux_x64'] = 'a458ddab5f8d071c9b4f24ccfa685aedd57ccf7338c3ea0e2b99546cf35a3958'
node.default['nodejs']['binary']['checksum']['linux_x86'] = 'e884f070542f49f577fd9785f09cf7734e6c2107d23b6c1b58453d43183c5ec0'

# NodeJS install
include_recipe 'nodejs'

# Set NodeJS prefix
# We can adjust PATH here also, but this way is imo better
execute 'set_nodejs_prefix' do
  command 'npm config set prefix /usr/local'
  action :run
end

# Check that git is installed
include_recipe 'git'

# Install the service
nodejs_npm 'docker-etcd-registrator' do
  url 'git://github.com/psi-4ward/docker-etcd-registrator.git'
end
