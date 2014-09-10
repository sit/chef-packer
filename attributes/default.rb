node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.7.0"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    c80292822fc8d4bfd8ef61f1f1226efeff8bb1f6e903c0c66bc2472f3cf4ff07  packer_0.7.0_darwin_386.zip
    9866e16075a6dced7afb22cf151dd85062cc5a538cb5d5a3a3bfbe4e3f5ed2e6  packer_0.7.0_darwin_amd64.zip
    fdc40a9e34d158ae3c6b18cfc80c5fd747ecdb7db8a568a53189b884bdfad0e7  packer_0.7.0_freebsd_386.zip
    08087c2217ce120cb01f90a5bc56847a746169cdc501aecf5458aa106892b9dd  packer_0.7.0_freebsd_amd64.zip
    ecc9d1d4fca94c70a32c859875a0631f594f059d4029460b8b4bf0832c384fb9  packer_0.7.0_freebsd_arm.zip
    1f21e15ef181efad3a733cfc36ad316037572c7fe64a8abcca45ce90578b2c12  packer_0.7.0_linux_386.zip
    8e42100cab8c120654868c04e76fdf13b8dcc5af38490ba5fcdc064bef89f519  packer_0.7.0_linux_amd64.zip
    34166bf125af267f48083c1000e8a73c7c1231e8635b3b38bc3a3d02e86b37c3  packer_0.7.0_linux_arm.zip
    d6862907c9b892418fff2c95ce0f1ecb1cc86cbddbfb3b2e1d5113cd389cfcaa  packer_0.7.0_openbsd_386.zip
    166f3bcb1b60511c957e69b5dba269a45471117ea0d376514c70b6ea33c064f6  packer_0.7.0_openbsd_amd64.zip
    e7a6f4b7df7b7afc740eb17749a949806740cced1f7e10a4d60b045b400fb9ee  packer_0.7.0_windows_386.zip
    78c73b72178e2f8c5ff485449ef45dfe1ae375fb0f97634bac2e449a14d5448f  packer_0.7.0_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "packer_#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
