#
# Cookbook Name:: docker-etcd-registrator
# Provider:: default
#
# Copyright 2016, Petr Belyaev <upcfrost@gmail.com>
#

action :create do
  template "/lib/systemd/system/docker-etcd-registrator.service" do
    source 'docker-etcd-registrator.service.erb'
    owner 'root'
    group 'root'
    mode '0644'
    variables(
      config: new_resource,
      docker_etcd_registrator_bin: docker_etcd_registrator_bin
    )
    cookbook 'etcd'
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
