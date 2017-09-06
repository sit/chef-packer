node.default['packer']['url_base'] = 'https://releases.hashicorp.com/packer'
node.default['packer']['version'] = '1.0.4'
node.default['packer'][node.default['packer']['version']]['prefix'] = ''
node.default['packer']['arch'] = node['kernel']['machine'] =~ /x86_64/ ? "amd64" : "386"

# Transform raw output of the bintray checksum list into a Hash[filename, checksum].
# https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct
node.default['packer']['0.5.1']['raw_checksums'] = <<-EOF
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

node.default['packer']['0.6.1']['prefix'] = ""
node.default['packer']['0.6.1']['raw_checksums'] = <<-EOF
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


node.default['packer']['0.7.5']['prefix'] = "packer_"
node.default['packer']['0.7.5']['raw_checksums'] = <<-EOF
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

node.default['packer']['0.8.6']['prefix'] = "packer_"
node.default['packer']['0.8.6']['raw_checksums'] = <<-EOF
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

node.default['packer']['0.10.1']['prefix'] = "packer_"
node.default['packer']['0.10.1']['raw_checksums'] = <<-EOF
    7974c24313230dfe6a13a81332c3a2f5119d4c589ca3b7ead6decf4895486c71  packer_0.10.1_darwin_386.zip
    fac621bf1fb43f0cbbe52481c8dfda2948895ad52e022e46f00bc75c07a4f181  packer_0.10.1_darwin_amd64.zip
    951012ddd2564cfe1cf901b8486a36896f89d4c4e75b3ed85d6f9b49c06ac14e  packer_0.10.1_freebsd_386.zip
    170459ee7a1b2360f49a07ecffbadffe5407826f9514af10a25c3f19e1721e43  packer_0.10.1_freebsd_amd64.zip
    3360dad292c16d2893f6138edd33d6f8eba00f1985330ad797f80670b3032e2e  packer_0.10.1_freebsd_arm.zip
    9146b94115684a9725b2c1b5e5fbc412f30caaca136dbad4028423d6d6d3b6e4  packer_0.10.1_linux_386.zip
    7d51fc5db19d02bbf32278a8116830fae33a3f9bd4440a58d23ad7c863e92e28  packer_0.10.1_linux_amd64.zip
    1e110fb8ade48f959e426cf07603240fdc050d19ee8097e824459bf5e0638461  packer_0.10.1_linux_arm.zip
    b5a25296056ac6511a370e7357b3723de313bfc8ffcb8bd850d6ba8d77b8493e  packer_0.10.1_openbsd_386.zip
    255251a5dd93bba3c286b22b95ee9df63a1270c5c57c355263d0bebf692513da  packer_0.10.1_openbsd_amd64.zip
    9c3c3483a8b6dd6d116747bfcccbf6f530ffab9bb46b47d9a49bdcb92c145914  packer_0.10.1_windows_386.zip
    623013056dc662f29817dce6bd31e6fb669883a35ea9311951bbcea4eb9c59f7  packer_0.10.1_windows_amd64.zip
EOF

node.default['packer']['0.11.0']['prefix'] = "packer_"
node.default['packer']['0.11.0']['raw_checksums'] = <<-EOF
    4b6348bfdd8d086c20d919e0abde83fe0d0d1758c25463075f1fad42c5ac0efa  packer_0.11.0_darwin_386.zip
    5e3c3448f0efc33069ecfeae698eea475b37ebff385db596f6f4621edfd52797  packer_0.11.0_darwin_amd64.zip
    2fd05aaa9f70248a783df8aa6ef38457a006b389c5e2111167123ee4dd0b1bd5  packer_0.11.0_darwin_arm.zip
    f355cf0145bccdd6e4dc7d8c4b2470e4c8887719ab0fbc4f6edb96db4246a0a0  packer_0.11.0_freebsd_386.zip
    e2c5776e90e1bb3f4f3846090ec1b9285e37da226ce7c7351792af046d06ff79  packer_0.11.0_freebsd_amd64.zip
    176fea5a1ab4589ca727d4f54dc1b0cd7c7e1c98172adb22540fea4d85af603e  packer_0.11.0_freebsd_arm.zip
    abc25443416641e2277c8d968c6557bf9a009f9dc6ece4f0932acbb53c6c6fee  packer_0.11.0_linux_386.zip
    318ffffa13763eb6f29f28f572656356dc3dbf8d54c01ffddd1c5e2f08593adb  packer_0.11.0_linux_amd64.zip
    bf6fcfe99f6e35cf179d42af01d69bb10ee33ae2a824cbdfc71aba52f3b92a93  packer_0.11.0_linux_arm.zip
    d4ba32f50f02f1cdd17d67d41f0f873670c3f3f46f905ff1d376e45defff6a9a  packer_0.11.0_openbsd_386.zip
    a95fdc04df3f9fc5dea49943d6cd7830e0281c7c9ce8e4f1715ee04b6c7363bb  packer_0.11.0_openbsd_amd64.zip
    ff8149f71021ee65e16c264e42423082b079733a612eb2b6a0a959abd2160d4c  packer_0.11.0_windows_386.zip
    0a5fae47bd7269a3e739e7f9e6b6dea7564a80e02f30a152c9a071155eaaa65d  packer_0.11.0_windows_amd64.zip
EOF

node.default['packer']['0.12.0']['prefix'] = "packer_"
node.default['packer']['0.12.0']['raw_checksums'] = <<-EOF
    9fe5561a2be482989dd518d7e9616c2dcfe5111e749489ceadde5bbdf9e6b1b8  packer_0.12.0_darwin_386.zip
    e3f25ad619f35e10a4195c971d78f29abceb16877bbf2bd75182140373d02bd3  packer_0.12.0_darwin_amd64.zip
    f5cf377c17c2513622034d2e602d820f5fed31d807edf2c424f4891612579d0c  packer_0.12.0_darwin_arm.zip
    58bd298378fe811f2fdb0eb71f8d509dc58f997da32c135a04574133b05ee009  packer_0.12.0_freebsd_386.zip
    6b8a587e7f2a4a0dd26a7d523e474b0b30259b9683f2677cecec837eeab5ff0b  packer_0.12.0_freebsd_amd64.zip
    5a2a90741725993751ca5da9dbf29898f2196d005852dc1da72985d3c48be77f  packer_0.12.0_freebsd_arm.zip
    1b63006e1799f530755910d48b0858d80f3e6300b245511f1bc8a082108b92b3  packer_0.12.0_linux_386.zip
    ce6362d527ba697e40b8c90a98d2034b7749e2357fa238b08536aed44f037073  packer_0.12.0_linux_amd64.zip
    cd6482ad0b3c80d386989e73a7927248558fb627b53bbfd2f490d7a473a81d17  packer_0.12.0_linux_arm.zip
    99fb287ce60ddd27bcdda11c87cceab3fcfc6921290bb2ee279bf3646df2f23f  packer_0.12.0_openbsd_386.zip
    8a48bb7865b22a219c6d0085e20d170cb0f852580732bf45016da43be4fd8131  packer_0.12.0_openbsd_amd64.zip
    1b346c6f381e21e92a589dfcc0eafc7c2b87f10cdfc524e3c7128dd0a64a9763  packer_0.12.0_windows_386.zip
    4d1f9733b3cafc9e0ab2b1e9957dc2621a57f209a78d51ac5f5312cbcbb4e300  packer_0.12.0_windows_amd64.zip
EOF

node.default['packer']['1.0.4']['prefix'] = "packer_"
node.default['packer']['1.0.4']['raw_checksums'] = <<-EOF
    39ffdb34ad57b639eac99c943dd84cdc2676195bd52cc9c3cc72d2485840c0c7  packer_0.12.0_darwin_386.zip
    a7aef181b9f6371cd8d9c18dc110cd28684eb1095665ba4c9c28786d79d10f17  packer_0.12.0_darwin_amd64.zip
    27c090bef906b6b98bc080d6acd6764626a7d640c1c895f085d67f08e83e74bd  packer_0.12.0_freebsd_386.zip
    8c6aebcaf228d6883cd6afda4b88028cd8168fd04d92feb016b7b4a79571d0a2  packer_0.12.0_freebsd_amd64.zip
    fb7ae008f05950a895e33c724722bb408a45918d0d5649c86a5631b087f3af17  packer_0.12.0_freebsd_arm.zip
    b7f541c4a3b217cd0e38c3a13405cd3dcd29e3bd2d38fb8e20ae54b4b38a1014  packer_0.12.0_linux_386.zip
    646da085cbcb8c666474d500a44d933df533cf4f1ff286193d67b51372c3c59e  packer_0.12.0_linux_amd64.zip
    c35913e0fb48fcf28011a4268ff179812d84243088d7bb0931727cb54ee668a9  packer_0.12.0_linux_arm.zip
    e19208bddc9da8844eaff96c49d7cb8269d5e43a546cee721683faf4b88641f0  packer_0.12.0_openbsd_386.zip
    487ca4f29c327b389370768cb303ade4d791854918d52632be305ac9e614e64f  packer_0.12.0_openbsd_amd64.zip
    8e05658de4ba4170530b5e73f6f241a8652a685517797c4323ea6e0b65a4f37c  packer_0.12.0_windows_386.zip
    1a2ae283a71810a307299c05df73e96890fb7503f1b32c52850356ddb750d877  packer_0.12.0_windows_amd64.zip
EOF

node.default['packer']['checksums'] = Hash[
    node['packer'][node['packer']['version']]['raw_checksums'].split("\n").collect { |s| s.split.reverse }
]
prefix = node['packer'][node['packer']['version']]['prefix']
filename = "#{prefix}#{node['packer']['version']}_#{node['os']}_#{node['packer']['arch']}.zip"
node.default['packer']['dist_filename'] = filename
node.default['packer']['checksum'] = node['packer']['checksums'][filename]

puts "filename : [#{filename}]"

