# frozen_string_literal: true

control 'HAProxy configuration' do
  title 'should match desired lines'

  describe file('/etc/haproxy/haproxy.cfg') do
    it { should be_file }
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
    its('mode')  { should cmp '0644' }
  end
end
