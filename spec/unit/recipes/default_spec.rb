require 'spec_helper'

describe 'docker-etcd-registrator::default' do
  let :chef_run do
    ChefSpec::ServerRunner.new(platform: 'centos', version: '7.0').converge(described_recipe)
  end

  it 'should invoke nodejs recipe to ensure that it is installed' do
    expect(chef_run).to include_recipe('nodejs')
  end

  it 'should invoke git recipe to ensure that it is installed' do
    expect(chef_run).to include_recipe('git')
  end

  it 'should set nodejs prefix to /usr/local' do
    expect(chef_run).to run_execute('set_nodejs_prefix')
  end

  it 'should pull the registrator code from github' do
    expect(chef_run).to install_nodejs_npm('docker-etcd-registrator')
      .with(url: 'https://github.com/psi-4ward/docker-etcd-registrator.git')
  end
end
