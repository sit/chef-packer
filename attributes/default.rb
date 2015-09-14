node.default[:packer][:url_base] = "https://dl.bintray.com/mitchellh/packer"
node.default[:packer][:version] = "0.5.1"
node.default[:packer][node[:packer][:version]][:prefix] = ""
node.default[:packer][:arch] = kernel['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default[:packer]["0.5.1"][:raw_checksums] = <<-EOF
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

node.default[:packer]["0.6.1"][:prefix] = ""
node.default[:packer]["0.6.1"][:raw_checksums] = <<-EOF
    f941d12e5db1dc49665a9b62299df9f97b9dcb4b5dbabbbdf77211e46935aea5  0.6.1_darwin_386.zip
    1ab1cf76be8ab1b953f0e634c96f8a09a9d17eb3d180b120b9d19afff2a94cb4  0.6.1_darwin_amd64.zip
    b1b1d4e34494cbc3da5f3770770201b96426f79db196f415bcfefe0c53ef6ace  0.6.1_freebsd_386.zip
    21ea9231623f156ff1600d60ea024c688a8c526f4cfb62e070e2f158153391e6  0.6.1_freebsd_amd64.zip
    341d9790aa4183085fdea4f5e1998160a3cfbce390a46bc02259d1cfcf95df40  0.6.1_freebsd_arm.zip
    8b83a1c4585335699a675f2bafa004e6da7f46394cd18b1b0218ca9105d4e64f  0.6.1_linux_386.zip
    9c13a55ab7db13509c8556f5d416ef373641da072f54686e7689c18a25b85aea  0.6.1_linux_amd64.zip
    1782d7c3fbbf9376e8fcd22f47247d8a6e9a4099599d4d8c3a8160346c0ee04b  0.6.1_linux_arm.zip
    c32954282f3a249682b0322f89b9a0919793fc445bc7f8d53ad816d46b057b00  0.6.1_openbsd_386.zip
    0d468b1f3244394b2615f78a1a47f61c77110465fa5c270899f32e6387a680e8  0.6.1_openbsd_amd64.zip
    b50e11e0f37efa94de0eeb4d10e1add050d4bee87773dea60faab15da38122f8  0.6.1_windows_386.zip
    1083c4232d6a3a50858b31e99e7e963c799ca9c6c5dd9f0621472c1cb9a33821  0.6.1_windows_amd64.zip
EOF


node.default[:packer]["0.7.5"][:prefix] = "packer_"
node.default[:packer]["0.7.5"][:raw_checksums] = <<-EOF
    72d57fe6a6ec2660dda2aed73198a4c4d9152037831d6aa44c64a28307c299c7  packer_0.7.5_darwin_386.zip
    c0e149c4515fe548c1daeafabec3b4a091f2aa0c6936723382b3f6fe5a617880  packer_0.7.5_darwin_amd64.zip
    6bce28c51a1862cbc3071421546620fb27007732f7a8470054e7267ca3521b95  packer_0.7.5_freebsd_386.zip
    508293b60f525c44560ca569db5b63b6f92294f655c61b076243a98a0ea75604  packer_0.7.5_freebsd_amd64.zip
    1cef5f1875a19b9c46daca5f36739bf2e9c9d68b1f27319abdc36c02837ac662  packer_0.7.5_freebsd_arm.zip
    6a6ee79d51909f04f734c15a0e12ebcaba3f2cf4d449906f6a186490774262f9  packer_0.7.5_linux_386.zip
    8fab291c8cc988bd0004195677924ab6846aee5800b6c8696d71d33456701ef6  packer_0.7.5_linux_amd64.zip
    8a7d63f0a9282f7b0a833a8455d37f5916d5a9200c17c83627922e08ed9ec2ca  packer_0.7.5_linux_arm.zip
    986d3b038f54ef86de313b10d45248c78159ebf5850615ab326d6e57229086a6  packer_0.7.5_openbsd_386.zip
    c11a67715de000de6742ebe7fb7187ba1db08333ec3941111a72672f0eb27509  packer_0.7.5_openbsd_amd64.zip
    99b879f491df08fa217193edea0b777341c73d4a145f2329b5c795d821258536  packer_0.7.5_windows_386.zip
    1dccdb825bbdd3487747771f58cecb5cbd0a73d44b52958f0d09ac9086b861b9  packer_0.7.5_windows_amd64.zip
EOF

node.default[:packer]["0.8.6"][:prefix] = "packer_"
node.default[:packer]["0.8.6"][:raw_checksums] = <<-EOF
    1fb3b1382885f39c1f1f159fc7a6ef4be12d074c97fba76e0050d1990a990aed  packer_0.8.6_darwin_386.zip
    91b5e5d4524a7a2f09a07aad1c8e26e1200b47191a42c1b2facac4a27fd674d0  packer_0.8.6_darwin_amd64.zip
    c1eee9159a2b808a98392026b18b9b8d273dc7315729be223b872f244ee4a8a2  packer_0.8.6_freebsd_386.zip
    bd0dac59e22a490068f45e4d97a8e698637efca88c89caa7df764ea96bd7b718  packer_0.8.6_freebsd_amd64.zip
    4ca3827f70af25656dd3eff6ac442b0e62adc28d6ea1d56f47721189bb7d0453  packer_0.8.6_freebsd_arm.zip
    d1385af26ea42560ddc4f4958c88cb00c3e4a9f8a2d88a81c96b4bf1cb60369b  packer_0.8.6_linux_386.zip
    2f1ca794e51de831ace30792ab0886aca516bf6b407f6027e816ba7ca79703b5  packer_0.8.6_linux_amd64.zip
    958cbae3f99990946c1de9af238bf1760c3382f83c4975a32be54cfb0378d8d8  packer_0.8.6_linux_arm.zip
    009f30cf9f137429ca4dc2c175e0431a72f44ba3dd427cb8a173c68c7d3be7eb  packer_0.8.6_openbsd_386.zip
    bfab2f16a6b4f34e317d792ad97c3e879304dc8ae7866e70737f61ebfc8952a0  packer_0.8.6_openbsd_amd64.zip
    8d0bd037909206926d988b30e9336faf105dffe97c2924d455b28de437557c7f  packer_0.8.6_windows_386.zip
    786503f2ffe658c1b318af227eabb8c10f3f425608ad4ef709206757931b7eee  packer_0.8.6_windows_amd64.zip
EOF



node.default[:packer][:checksums] = Hash[
    node[:packer][node[:packer][:version]][:raw_checksums].split("\n").collect { |s| s.split.reverse }
]
prefix = node[:packer][node[:packer][:version]][:prefix]
filename = "#{prefix}#{node[:packer][:version]}_#{node[:os]}_#{node[:packer][:arch]}.zip"
node.default[:packer][:dist_filename] = filename
node.default[:packer][:checksum] = node[:packer][:checksums][filename]

puts "filename : [#{filename}]"

