require 'spec_helper'

describe 'devopsbox::default' do
  
  # expect packer to be installed
  describe command('/usr/local/bin/packer version') do
    its(:stdout) { should match /^Packer v0\.12\.0.*$/ }
  end

end
