node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.7.2"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"
node.default[:packer][:file_prefix] = Gem::Version.new('0.7.1') > Gem::Version.new(node.default[:packer][:version]) ? "" : "packer_"
node.default[:packer][:file_url] = "#{node[:packer][:url_base]}/#{node[:packer][:file_prefix]}#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"

filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    00c73eba76139869e39377e6c342e937d36f1a1b81920f4948608c5c10455190  packer_0.7.2_darwin_386.zip
    bed7ddc255b5b71b139de5e30d4221926cd314a87baf0b937ba7a97c196b1286  packer_0.7.2_darwin_amd64.zip
    8f0db25bebdfb83d6f0525523fd775489e95a11d3efdaff73db1d3e3e62fc54d  packer_0.7.2_freebsd_386.zip
    e5110e8eeeb8af659f22e66fb23a2bd6227ddb68503727cacedd21a53369c5b1  packer_0.7.2_freebsd_amd64.zip
    4c2bf9681092a4460735eee6611f0474ce7525ccfb8cd4403b58feedf74c629a  packer_0.7.2_freebsd_arm.zip
    a0a03b9eb9f1199a294b6a8732fd76e625f22d263e20ebc2c377d2d95cfb2242  packer_0.7.2_linux_386.zip
    2e0a7971d0df81996ae1db0fe04291fb39a706cc9e8a2a98e9fe735c7289379f  packer_0.7.2_linux_amd64.zip
    88092001573c2b198705e76c91f557150e029ac2f9076f30bd9f4f6e2a0a66dc  packer_0.7.2_linux_arm.zip
    a8b934ad0466a47f42deb6d5323e07e254dc038c2a6eeb562a333990358f961c  packer_0.7.2_openbsd_386.zip
    30e81878fe8581c30658826787780dece85f5de459527d5ec9884e97e3caa8ab  packer_0.7.2_openbsd_amd64.zip
    13dd82b4528c20f409ad87f7ffb39cd5197c050165ad41cbf3ea33fc1418eab6  packer_0.7.2_windows_386.zip
    33d6853d674f38d9bdc982c99e58ded6df2e908203a6a06aa948c38d9c779fc4  packer_0.7.2_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
