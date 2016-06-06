require 'spec_helper'

describe 'devopsbox::default' do
  
  # expect terraform to be installed
  describe command('/usr/local/bin/packer version') do
    its(:stdout) { should match /^Packer v0\.10\.1.*$/ }
  end

end
