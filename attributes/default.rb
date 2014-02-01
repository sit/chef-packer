node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.5.1"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    a0d8db4944d0024af05e256357cad014662eddefef67b1b2fe8a5060659a5be2  0.5.1_darwin_386.zip
    56bec31f0d3540d566ef86979b25367660d7e72c010c9d87ef91c5c2138e9eae  0.5.1_darwin_amd64.zip
    337651f4dd4f897413eb07e8d2cd821a0246d04c4235ce398af58f7939e097e1  0.5.1_freebsd_386.zip
    ae356b68517aa75d08736c44d838b6bd4a19203315ee8afffff5de35684e1464  0.5.1_freebsd_amd64.zip
    bbd2468d69195b4227034aa07474e87c2bcfe2250ae620085219e870e6b33bf6  0.5.1_freebsd_arm.zip
    cc7741165a3d5f66c1d4af3ea3b1e80ebe03cb2ce5e0ff27ff43ecac64f1dc7a  0.5.1_linux_386.zip
    fa68149f4356ad48a6393dbf9e81839a40aad115e5bad83833ff9ccf6a0239b8  0.5.1_linux_amd64.zip
    6a6b724df3bc51478cc1cd4ccbc000924bbe9018a4ded74d3b6e0409cb9092e0  0.5.1_linux_arm.zip
    a2ff5410a871baafef2ffd1924f5b6d7fe1ba443ba0b23071e2c928935d173e6  0.5.1_openbsd_386.zip
    41c1edd5faf9041081f1dbaa6eb14e9f18cdb25a8dab85f33c08701bd0275817  0.5.1_openbsd_amd64.zip
    350480400d31c00e1604fce8744b5f3d279c15cf8c49cd7b59e1412e316dae01  0.5.1_windows_386.zip
    6c5c43aa92f41f23199b9142f08950e57e400e3fed9196132a111f65b499c214  0.5.1_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
