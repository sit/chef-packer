
node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.2.0"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

node.default[:packer][:raw_checksums] = <<-EOF
    f57fbe604bfc0a8ceb0eb1edf1eaff7005f4c01eed599510e12009ad028c8513  0.2.0_darwin_386.zip
    1ef36ba16e774b7033c75be06245632959e055870ecb074696489b1c964182c6  0.2.0_darwin_amd64.zip
    5c6baaad8b47edfd7ad7c7ce9f9a6c2714a81a71ec9af263874b5b4b0f9bc0e8  0.2.0_freebsd_386.zip
    f36f8c70344111618479a7110789e2cc7725159e385713fe7f4461035fb43737  0.2.0_freebsd_amd64.zip
    a6913d31a61da186c3e14aca33f2ef2abd35c4f44d61ec768da512ce78154fcc  0.2.0_freebsd_arm.zip
    acb56e4bf59c304cc0600c356ad256bd49ffa91c147d12a65ec94a49eda3991c  0.2.0_linux_386.zip
    9a36268c92edba2a59e8dfe9153ab41dd5a2e0eaa79595344781772214891462  0.2.0_linux_amd64.zip
    5b3ee395836c8b5f4f28b2297a30cf8c5bf274af1e8af1136a2524b8482211bf  0.2.0_linux_arm.zip
    488dd4f80f7872df6716f0390f995b0ca9c11af219ecf8d436daeba3f19ad992  0.2.0_openbsd_386.zip
    46d0bebb9d72c3c15d63c389047d0687546d66641f15b18b571bd81a609c5e7e  0.2.0_openbsd_amd64.zip
    982d25699deb5fe703d5ef335dd028964e8330a18816638b1f11ed4cc234d6af  0.2.0_windows_386.zip
    7cf9e18a127d8e59accd0b950d623b8b9256e403ef1abd7918607413852c790e  0.2.0_windows_amd64.zip
EOF
node.default[:packer][:checksum] = node[:packer][:raw_checksums].split("\n").find { |c|
    c =~ /#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}/
}.split()[0]
