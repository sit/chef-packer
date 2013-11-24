node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.4.0"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    19ebabaf4d28cceeca17f64d6874e1bba03039cdc2c4479c03e2ef766e224015  0.4.0_darwin_386.zip
    56454eca852aafb8700f640815d31568fe4a9005a0958745d89b53c39e95911f  0.4.0_darwin_amd64.zip
    4b8edabd58add518309152a1203cb6cc81715da470370b666f555d3e39b6916b  0.4.0_freebsd_386.zip
    9d9b7a6b3aacf783a90486bba2243ef153769529e5dec746ea5b36c6d532c1df  0.4.0_freebsd_amd64.zip
    953bfd657fc27b62890636214d3f8bcee0e08e34ccaca461791bf18b50cdcfff  0.4.0_freebsd_arm.zip
    5a5e3b7438b0df1735748b167f9d05f92578f91d0f1cd2b2af0b4193b188ad7e  0.4.0_linux_386.zip
    42f2cbd6f066bfc433b7863d463ce6e28a9c89581322faf8e039f6aad3ce482f  0.4.0_linux_amd64.zip
    54f8d4feef0d0d9e4e0e664792a416925f2c673c41c0efda78040e9c5b7e3567  0.4.0_linux_arm.zip
    36a3733e528db5d4fff2605c9943f6530ae4b394c6955433d3e54602ef341275  0.4.0_openbsd_386.zip
    68074b96cd29bc4bc4f3003f353635bf7c002505bb4f7f451586bf65920e7294  0.4.0_openbsd_amd64.zip
    cdeb3f2be1f15dbc0958a7e1cfd4bfdd4e63fac5f17217954a9be0f0efb5c003  0.4.0_windows_386.zip
    b040d78e946476df12e7c80b725f287e4cd98f3386ac1fb2a3ba706d5703e460  0.4.0_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
