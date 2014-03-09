node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.5.2"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    32849dcbbb83b86d0d3f621705224ee580d3215f4060913f0bcbc974035ffd00  0.5.2_darwin_386.zip
    1c3c881c4a29cc71617a87503557df684977d86b966f5ed0273298e2f6221594  0.5.2_darwin_amd64.zip
    ca62ab9e2dc80c28c2f19e0aa50ec8ced3f64d51f7cd07169e3e12ec5cff34c8  0.5.2_freebsd_386.zip
    ebb8a012e23d5c18ed64a038cd54ee7f57a3647e096ae4564f6917ec1fc27c4c  0.5.2_freebsd_amd64.zip
    9bb5e20ae0ee42e390728b3ce0a599ec1ff0c77e83dcf755795e35a7723f2da1  0.5.2_freebsd_arm.zip
    114b6ea3c623a048552d1464a34866f6d9738a3a5dcf62e606ced60c8958619f  0.5.2_linux_386.zip
    813f856a3d326d2a65f561edac8050d981f93ea51da03b0fb6b3d72010a5fc96  0.5.2_linux_amd64.zip
    44acbd9253687842c3ed71d9be9b0b73d894c112d338051ed4de1d00b158accc  0.5.2_linux_arm.zip
    7732d8614e3df4f898947382041b35651c4fb69ac7e314737f647ef0fd8a6df4  0.5.2_openbsd_386.zip
    7b4a10240da9c4f9ed37ce4b716240fac643c4d1bf02d07b46c15cad4785f053  0.5.2_openbsd_amd64.zip
    8bc0dd5e8242c1c711a184d00ae7b506261df3e2ab3e63cc141d7a3fe95a2e5c  0.5.2_windows_386.zip
    6bd9756f9a03c120134677b72ed15fe2bd29632932a709723f26b75e2338a291  0.5.2_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
