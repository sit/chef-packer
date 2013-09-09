
node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.3.1"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    13cd84702dec746b7c6abdf874940f07f2d9e4cc60ea8681647aecdf07f9f20d  0.3.1_darwin_386.zip
    4b2cd0728799422c478853e87417c5efbf5e8b2d76c91b1cd910a2a2910c1585  0.3.1_darwin_amd64.zip
    f34384ae66ce78c0cc7594ee7aade4bb35e9253ba6e6c5c19d3a7741c2e611b1  0.3.1_freebsd_386.zip
    f2c82874156c882703ae5b589b1566da55e41ee5d1e3f3b77ce00c5b67fe33a7  0.3.1_freebsd_amd64.zip
    d9f0f8b07ecb9f5bf012539097a3da012cf7ae6cbc92b80552f83dd72bbb4d52  0.3.1_freebsd_arm.zip
    43a9b7cad157eab3ce0757fbd52ed2c3741ca46c6cf0b2e89ab55c5f81a43ac6  0.3.1_linux_386.zip
    ad4e8972b07be73c7de716d07a79c43630715fc0fa517b9046e33fbc13cd59b5  0.3.1_linux_amd64.zip
    57775d611f02efe24a6748bf3cba9427615bb1c6bc01e9bb6fd7936573240dd9  0.3.1_linux_arm.zip
    7b63dcbbf454bdfa180f7c1f58203c618aab54bcb2598a558b5b4e484a20d2dc  0.3.1_openbsd_386.zip
    71cec0d204285a3208ab52cea16e9d4c1c6653e9e60793af398dfa0901840192  0.3.1_openbsd_amd64.zip
    ce3199c536c4e9d9c224ca38a94b63eee56f0d5d74ad29d2dc4d9052b9961e66  0.3.1_windows_386.zip
    865e0a4fba31ca413fc95797ab6efc84ca7fa33dc4cb8b065a2784400641f394  0.3.1_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
