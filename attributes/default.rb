node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.4.1"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    80e2ef4146c27e763daa7f7e5fcb1f7ffe5a0127d82e8a95868059dc91cf3b77  0.4.1_darwin_386.zip
    1432211d9d3187e0ebc3e83f06a63120210e0c479ce981d269c744d382f0d514  0.4.1_darwin_amd64.zip
    2e4c44cf5d38b3e710c25a0b6a292a39d296a969ba41f76901c8694fd42faa87  0.4.1_freebsd_386.zip
    026e43c9d14b020e80d3b8ca6b25262095c6aa7ae0f0b9126035e0bf5726ce7f  0.4.1_freebsd_amd64.zip
    e3bacc3cd4fafffb8c23fa56b3d41e6a53c80cb4988fc219ec9de2dedc3113c0  0.4.1_freebsd_arm.zip
    90e89491fb706864ad0c0487a63dae89624459d72aa8346ae7b1c8a7b5bb4fbb  0.4.1_linux_386.zip
    bfcab39ab6da9d57bb7efe99e6f0f645f970024033614c7e03bf5f9f38b6248a  0.4.1_linux_amd64.zip
    82aa957087ee34bfc21dbb67c8588dc73dee1593c5a68f58d0b1dfa40e4a16e9  0.4.1_linux_arm.zip
    e0df04112c94ae3569b438692c6b14fe0c94d06c37397086d0af1ced316ed357  0.4.1_openbsd_386.zip
    8831857f2575dcd00ed5ce95ac227dc230c3bf6ae0a42902521747162e95ba58  0.4.1_openbsd_amd64.zip
    9ef6669901b865610569d36cd9eda14f4500a255bc3447317d3a73362fdc96ba  0.4.1_windows_386.zip
    9f9be0aeecab70695a0b04184b0930c1e086ec883d31b3aa27b306f265befe6d  0.4.1_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
