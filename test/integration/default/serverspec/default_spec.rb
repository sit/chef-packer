require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'packer' do

  case os[:family]
  when 'Centos', 'RedHat'
    exec_location = '/usr/local/bin'
    RSpec.configure do |c|
      c.path = '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin'
    end
  when 'Ubuntu', 'Debian'
    exec_location = '/usr/local/bin'
  end

  describe file("#{exec_location}/packer") do
    it { should be_executable }
  end

  describe command('which packer') do
    it { should return_stdout /#{exec_location}\/packer/}
  end

  describe command('packer -v') do
    it { should return_stdout /Packer v0..*/ }
  end

  describe command('packer') do
    it { should return_stdout "usage: packer [--version] [--help] <command> [<args>]

Available commands are:
    build       build image(s) from template
    fix         fixes templates from old versions of packer
    inspect     see components of a template
    validate    check that a template is valid

Globally recognized options:
    -machine-readable    Machine-readable output format." }
  end

end
