#
# Cookbook Name:: docker-etcd-registrator
# Provider:: default
#
# Copyright 2016, Petr Belyaev <upcfrost@gmail.com>
#
use_inline_resources

action :create do
  template '/lib/systemd/system/docker-etcd-registrator.service' do
    source 'docker-etcd-registrator.service.erb'
    owner 'root'
    group 'root'
    mode '0644'
    variables(
      config: new_resource
    )
    cookbook 'docker-etcd-registrator'
    notifies :run, 'execute[systemctl daemon-reload]', :immediately
    action :create
  end

  service 'docker-etcd-registrator' do
    supports restart: true, status: true
    action :enable
  end

  # Create config directory
  directory new_resource.conf_dir do
    owner 'root'
    mode '0755'
    action :create
  end

  execute 'systemctl daemon-reload' do
    command '/bin/systemctl daemon-reload'
    action :nothing
  end

  template "#{new_resource.conf_dir}/docker-etcd-registrator.conf" do
    cookbook 'docker-etcd-registrator'
    source 'docker-etcd-registrator.conf.erb'
    mode '644'
    owner 'root'
    group 'root'
    notifies :restart, 'service[docker-etcd-registrator]'
    variables config: new_resource
  end
end
