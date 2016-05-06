require 'spec_helper'

describe 'test::default_provider' do
  context 'Given default parameters' do
    let :chef_run do
      ChefSpec::ServerRunner.new(step_into: 'docker_etcd_registrator').converge(described_recipe)
    end

    it 'should create systemd service template' do
      expect(chef_run).to create_template('/lib/systemd/system/docker-etcd-registrator.service')
    end
  end
end
