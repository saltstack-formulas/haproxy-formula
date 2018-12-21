title 'Verify haproxy installation'

describe package('haproxy') do
    it { should be_installed }
end

