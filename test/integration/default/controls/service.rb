# frozen_string_literal: true

control 'HAProxy service' do
  title 'should be running and enabled'

  describe service('haproxy') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end

  describe port(8888) do
    it { should be_listening }
    its('processes') { should include 'haproxy' }
    its('protocols') { should include 'tcp' }
    its('addresses') { should include '0.0.0.0' }
  end

  describe port(8998) do
    it { should be_listening }
    its('processes') { should include 'haproxy' }
    its('protocols') { should include 'tcp' }
    its('addresses') { should include '0.0.0.0' }
  end

  describe port(6379) do
    it { should be_listening }
    its('processes') { should include 'haproxy' }
    its('protocols') { should include 'tcp' }
    its('addresses') { should include '0.0.0.0' }
  end

  describe port(80) do
    it { should be_listening }
    its('processes') { should include 'haproxy' }
    its('protocols') { should include 'tcp' }
    its('addresses') { should include '0.0.0.0' }
  end
end
