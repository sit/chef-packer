node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.7.1"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    198493bed2eb8676b8232418b49f95c1d8f7a197957c24f42aa67d030aa1ee0a  packer_0.7.1_darwin_386.zip
    10b266d9020b72ff09a38cd7b6b42a3ec4bd78b1b13a83e9a5c433d504378322  packer_0.7.1_darwin_amd64.zip
    d4dd7ee066d8e3e61c3bb6830b9e97000e77d6919f053313f1f0f666d0910cf8  packer_0.7.1_freebsd_386.zip
    01032401c48267c54899631101091139c8954f189966ff1624d1633f2d0a4114  packer_0.7.1_freebsd_amd64.zip
    a106335a748caf7d3622dd3fc44ce7dd59fe84019214246117afef00b46941df  packer_0.7.1_freebsd_arm.zip
    905a68990344129efc19f4d508e224cc76a0b2f8bcb45b831a0ac3c72cdaf462  packer_0.7.1_linux_386.zip
    4f7b8cd96a147f9473cc724397613c8d98bbf0d8cb037b122785ff252eb12581  packer_0.7.1_linux_amd64.zip
    2dafdcb9ffc40f9490885ef7de6c02c490b2410a5ca9e4c2d6b61b4c3581f540  packer_0.7.1_linux_arm.zip
    9a4927e7bc84935f93599957cabad61fa06a6007a2ff55ac1fa7f661a1856775  packer_0.7.1_openbsd_386.zip
    a9634c12fe4f4cf6283b15f0f93a24246963ce1701944332dc5fa4242f88512e  packer_0.7.1_openbsd_amd64.zip
    1626cdcb8f6261f7f964c674f45c5ccd804b687e8c7f637af93ff12d0e86b89e  packer_0.7.1_windows_386.zip
    f100f80494aff1a489cec1e51178ff939b99dd2b9c05d95a8fde668ce0c8699e  packer_0.7.1_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "packer_#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
