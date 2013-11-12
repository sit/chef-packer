node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.3.11"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    12dc9435ef062757dd0a90b1bad2fe06e7e72378d8f33275c3143ab7cd320770  0.3.11_darwin_386.zip
    fc226df5dbfb189e8a1e948a2e9c12d2918001374dd3833088dd5eedd0b6fcf1  0.3.11_darwin_amd64.zip
    58813e23b42cc6fe1c948e2cb9578fdcb6b3256acc76572234031054c3a5b9da  0.3.11_freebsd_386.zip
    5c05110450d9aceca820e95fc13b6eb01cd9d08fb2b6e4c77eeccb3fedb72788  0.3.11_freebsd_amd64.zip
    6a0305a5946fd2ac5474f002c0a83646d94d77e8230ed5dc706bb0cea007b781  0.3.11_freebsd_arm.zip
    e6c98ac35643ce0d7bb5a3a168b53e2e02609246f6b0f0a6ae4421328212d9fa  0.3.11_linux_386.zip
    8c4079706b7dc6415c196c34f273dae1bad0a4cfa6058ed7f43962eece3b862d  0.3.11_linux_amd64.zip
    c73862c18eea0c5107e8d197ba1432a5ebbc87cc70dc45266646e927c129dcf5  0.3.11_linux_arm.zip
    5b5145981d2ddce76bfa847ffa3600b448ef8af93742b7b56210e58280c8b094  0.3.11_openbsd_386.zip
    c39aa8a39c2bf623ecd1d410dcd1891b26d14187271de942e328457dac7edd85  0.3.11_openbsd_amd64.zip
    45ff22739b78070ea36f07fe21f137cb500c90123ac7fd6c184eaa2c2c229d0c  0.3.11_windows_386.zip
    0b4aaec359a15d6cf45c4c44f5c0809c3ba1f05a916a4e94fca7047ac7bedf4b  0.3.11_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
