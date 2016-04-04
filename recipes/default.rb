#
# Cookbook Name:: docker-etcd-registrator
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['nodejs']['install_method'] = 'package'

# NodeJS install
include_recipe 'nodejs'

# Check that git is installed
include_recipe 'git'

# Install the service
nodejs_npm 'docker-etcd-registrator' do
  url 'git://github.com/psi-4ward/docker-etcd-registrator.git'
end
