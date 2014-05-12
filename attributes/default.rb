node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.5.1"
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer][:raw_checksums] = <<-EOF
  bfd150a1719e297ee9c560a3e7b59161c3ebcbe9cd6f077f14d37f105c09e0e7  0.6.0_darwin_386.zip
  2720b2a6b2d1ef083fa1aee5912d82915a92dc07f925ff0499ba5c21aa7c1da9  0.6.0_darwin_amd64.zip
  3608d1b1d9d46e5b410e609cbe060713abf8d95a643954090d94a1fe4b9dd29d  0.6.0_freebsd_386.zip
  882729128297d48db58310684d5343f82b92b8fc094a408b20497cf873145f87  0.6.0_freebsd_amd64.zip
  dbf741b53f789a081646899a1daa0d31425cbb1144685fd466ed07603d115525  0.6.0_freebsd_arm.zip
  1c770c5e84565c071eaf779d82a7b1de8e5ca160ebb5b8150f5b534e2577c098  0.6.0_linux_386.zip
  3c3c2d5fff21e0ba9aa25a18fcdf8ec04fbbd2f7364c74d843124336d1d7b36c  0.6.0_linux_amd64.zip
  90ebccc90739d3f51cc73008ed4eb201c74e49ed5ce944d124b3c860fb6dce91  0.6.0_linux_arm.zip
  32829f5a2f2dbee37eb21214f2e0636e0f9245ae887b026be4960cbc91884d53  0.6.0_openbsd_386.zip
  8635f1a4634100461869009e63406025f14096ff1cec63a7f1686e9b1778fdf8  0.6.0_openbsd_amd64.zip
  18eb6a9262447f1e64850ccba7772d509af35a465a109c0924ccf5e51bbff898  0.6.0_windows_386.zip
  882565c28ee78251116bf70df0d0aea22e215ec648434f22caf1fea84478a003  0.6.0_windows_amd64.zip
EOF
node.default[:packer][:checksums] = Hash[
    node[:packer][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
filename = "#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:checksum] = node[:packer][:checksums][filename]
