node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.7.5"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"
node.default[:packer][:file_prefix] = Gem::Version.new('0.7.1') > Gem::Version.new(node.default[:packer][:version]) ? "" : "packer_"
node.default[:packer][:file_url] = "#{node[:packer][:url_base]}/#{node[:packer][:file_prefix]}#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"

filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    f8c8a0fc49fe2fa4d5b7e80502d82acc  packer_0.7.5_darwin_386.zip
    73a8051edc0f1148fd2abc626c2fbfca  packer_0.7.5_darwin_amd64.zip
    223360fe08404e7797043d6174ef53d3  packer_0.7.5_freebsd_386.zip
    b659e70461ddaf29e8b50770f33f412b  packer_0.7.5_freebsd_amd64.zip
    11002f8eb0f51a077fda032ddce3300b  packer_0.7.5_freebsd_arm.zip
    a545108a0ccfde7c1e74de6c4e6fdded  packer_0.7.5_linux_386.zip
    f343d709b84db494e8d6ec38259aa4a6  packer_0.7.5_linux_amd64.zip
    e37052caae1b1ad46316f7ca0e6df424  packer_0.7.5_linux_arm.zip
    301fca3d702f3445f283c63fd5913134  packer_0.7.5_openbsd_386.zip
    7e7a0e37e6a58627a9e110dffbf30765  packer_0.7.5_openbsd_amd64.zip
    65ff87fc430fbcf34f49bc1e03ee515d  packer_0.7.5_windows_386.zip
    ccae5a5f71da60f24713b72c3ec33bc9  packer_0.7.5_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
