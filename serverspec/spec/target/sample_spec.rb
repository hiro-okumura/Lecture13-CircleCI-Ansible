require 'spec_helper'

listen_port = 80

describe command('/home/ec2-user/.rbenv/shims/ruby -v') do
    its(:stdout) { should match /3\.2\.3/ }
end

describe command('git --version') do
    its(:stdout) { should match /git version 2\.47\.1/ }
end

describe package('nginx') do
    it { should be_installed }
end

describe command('ruby -v') do
    its(:stdout) { should match 'ruby 3.2.3' }
end


describe service('puma') do
    it { should be_enabled }
    it { should be_running }
end