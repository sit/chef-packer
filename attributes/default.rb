
node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.3.6"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
    2ebc6e307c1ce85c11594a66f532ec32dc7abc6a5542c728b8eb556ff3c66f04  0.3.6_darwin_386.zip
    707f3ece075234afdb69be3819792ab49876ff30728dba07881bae58bd1c60fd  0.3.6_darwin_amd64.zip
    d8127fb0fc1060693094b6390efc7adeb65ef8f3cc9454b484b9bb3175def6b8  0.3.6_freebsd_386.zip
    7c94f004e53b4acc53b966689037f9fce246c465c09016d0a6d062302307b26b  0.3.6_freebsd_amd64.zip
    069ed1f1c7f3533ee4d5413bee8d845592aa65ba5217ffe50a2fd80508273083  0.3.6_freebsd_arm.zip
    4e2546ee4c78cedf3037333dc9f0e06bcca61fd4dc3c127a7d990e85eaf543d0  0.3.6_linux_386.zip
    5a7170957f94542cc8d1e40a4458be86b63484a9a139a6aa9b05e13179bd3759  0.3.6_linux_amd64.zip
    03500fb1110e782eab82bfe22e836540775a063d6988389102dd03329c613686  0.3.6_linux_arm.zip
    c5307a2ebab6ab96d23d268cf77582bc3fee42a0b5245a16748faa8007808fce  0.3.6_openbsd_386.zip
    19631dcc82ac343bdad9cdbdf7f731ab078e400e385c47a8b0c89cbf3c889e93  0.3.6_openbsd_amd64.zip
    76b853b41c86aeeeecd6bd723eb40b577d91b1ae94f345bc78e6ec79f9b2bb33  0.3.6_windows_386.zip
    dbfb59096c8322dd933c48f6c334b9678e03ae7dd6b611979d8bc1665a93f6f9  0.3.6_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
