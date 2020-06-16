# frozen_string_literal: true

title 'Verify haproxy service'

describe service('haproxy') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
