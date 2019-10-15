# frozen_string_literal: true

control 'HAProxy package' do
  title 'should be installed'

  describe package('haproxy') do
    it { should be_installed }
  end
end
