node.default['packer']['url_base'] = 'https://releases.hashicorp.com/packer'
node.default['packer']['version'] = '0.12.0'
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

node.default['packer']['0.12.1']['prefix'] = "packer_"
node.default['packer']['0.12.1']['raw_checksums'] = <<-EOF
    c056e8deeffedc52211826ac744e20f3f263aa2f439f67810e557d4641bd7a55  packer_0.12.1_darwin_386.zip
    a5295f267345a744369b26a5123344eba8e9db67e64ec1a7a575efbd794de280  packer_0.12.1_darwin_amd64.zip
    0887e48f2339a45a97b29f709c0304d58a965f919b0547dd0d29c622b3ff1df5  packer_0.12.1_darwin_arm.zip
    c6267fd78762b2bf29e1a04f45eab46564eb6d5835e08549c8ccd6fa771c609d  packer_0.12.1_freebsd_386.zip
    493f9753eb7fd16e9c8f2a06e467a3a9ca2a40dd6efabedfcd2534d16bb40254  packer_0.12.1_freebsd_amd64.zip
    1b5509e623aa73067c1f7c4f111edcb6ea337bf684c81d5d7b1e867588b520ed  packer_0.12.1_freebsd_arm.zip
    bd8dd7d6a568e3fe38e9065a8396ac1a90e826c075d777aca67d3c2f70580b1b  packer_0.12.1_linux_386.zip
    456e6245ea95705191a64e0556d7a7ecb7db570745b3b4b2e1ebf92924e9ef95  packer_0.12.1_linux_amd64.zip
    3d833b570137c7d3d9a1e259dc97f063d5a231b3fb92355eb63278e424baabb5  packer_0.12.1_linux_arm.zip
    8ac4ab9b3499674326dc39f45a33c21f2d863bab93de0b5904135be2af2a4c90  packer_0.12.1_openbsd_386.zip
    bafb02c3e713768c001d458bdf371ce199831f51ce9b842728ff2531b05d2b46  packer_0.12.1_openbsd_amd64.zip
    31548ff65ce8a2c8aa82ed798f993cdd0f2616920ebda7f275c030dd36256ded  packer_0.12.1_windows_386.zip
    d6efb1f4dd5bce2bad30f5e767648e27c0591f2978d322a9f2d7055a46ecea0b  packer_0.12.1_windows_amd64.zip
EOF

node.default['packer']['0.12.2']['prefix'] = "packer_"
node.default['packer']['0.12.2']['raw_checksums'] = <<-EOF
    c7bc37eccee47b68d3198eca8da68a7f48bc74aff9807f5bc7ea7ca5a053c463  packer_0.12.2_darwin_386.zip
    eef803cd43adc3b67593fd277f94b14ef266fe7124eb247d620beb29ebb4ec85  packer_0.12.2_darwin_amd64.zip
    e5e07b74573cdb712412e96e1e24cd784d42674e519e0d0253d87819286bb2a6  packer_0.12.2_darwin_arm.zip
    13ba36eb94f142b9d404bec3826be0d4fbea166478334b2a8ed90edd0b5bca43  packer_0.12.2_freebsd_386.zip
    dff363b30cf5686adbeb60edbdf33812eeed908b4e715ca4082ec53ff51ffb8c  packer_0.12.2_freebsd_amd64.zip
    06f612a436b320e14b18a0d266c30312fd3d0ed376dd425788b632b19e781e75  packer_0.12.2_freebsd_arm.zip
    458e63a74104e3e550181f5cf2a20f29d79e326c518bcb5723399d4e56ff3f20  packer_0.12.2_linux_386.zip
    035d0ea1fe785ab6b673bc2a79399125d4014f29151e106635fa818bb726bebf  packer_0.12.2_linux_amd64.zip
    daecd0f9c9abb0735cab65029c5e2752c0105f58be58a3e5ea423d5fcbf52a77  packer_0.12.2_linux_arm.zip
    1695210bc8d81bb0aaaa004bc41c65dda9b6d7eb5646a4c94cd1cc35b57293aa  packer_0.12.2_openbsd_386.zip
    21bc55a12799867210f87a7e761cbe4a7be4b205b8b4c5823a7b9b23b5c283b8  packer_0.12.2_openbsd_amd64.zip
    4e52975f3b46f97222858b2a1bf9bcd68d5485c3697775b3cfee98a16fce1812  packer_0.12.2_windows_386.zip
    2d8704a958af1e593c56aaf7da2be511eda535dd6e509dec84dfe28e8c48c5b5  packer_0.12.2_windows_amd64.zip
EOF

node.default['packer']['0.12.3']['prefix'] = "packer_"
node.default['packer']['0.12.3']['raw_checksums'] = <<-EOF
    092490f0607cc6098290721efea918c733d37ca9872335aab02077a3fc5a2d0f  packer_0.12.3_darwin_386.zip
    3109a4dbb66d5d55343c091a28d1a19352ea477a24b6c78c9da8f066d4c7f763  packer_0.12.3_darwin_amd64.zip
    09e93b6be7a707f1bb734c8e5008e571cc4aff91d428dad9b79ae05514aea7cb  packer_0.12.3_freebsd_386.zip
    f8ad4ed27be080bbaed83cefed62235d73eec7d0f426d0e59b122de4af02ab99  packer_0.12.3_freebsd_amd64.zip
    e6e4af944d67322d57f230296013213098f95868499798b23c2928b7188f8c47  packer_0.12.3_freebsd_arm.zip
    096b8762ff0dd7b95736ba690617b02c34576915fa1a4b60d99af9ed9f3a1006  packer_0.12.3_linux_386.zip
    d11c7ff78f546abaced4fcc7828f59ba1346e88276326d234b7afed32c9578fe  packer_0.12.3_linux_amd64.zip
    1df588c36e8450863fade72e34e9b8c63506847a6df2260093ea7de087263418  packer_0.12.3_linux_arm.zip
    52353841b622d4b7c1088e33baf0f5babac958e618f721b54f8a227612306aea  packer_0.12.3_openbsd_386.zip
    c8fddc64bb4b5e310f7d94b4609fe2f2c5fb6e896f2cd9fd9d8d1d51026e6036  packer_0.12.3_openbsd_amd64.zip
    8c5c3529d8e33d3bcec2f3b9d91c7156525d7c37b10a958b3ffb936eddb473f0  packer_0.12.3_windows_386.zip
    8ce6868205f9a9cf883d39d136d804c2bbe80aede0d2f09fe999807a82dc937b  packer_0.12.3_windows_amd64.zip
EOF

node.default['packer']['checksums'] = Hash[
    node['packer'][node['packer']['version']]['raw_checksums'].split("\n").collect { |s| s.split.reverse }
]
prefix = node['packer'][node['packer']['version']]['prefix']
filename = "#{prefix}#{node['packer']['version']}_#{node['os']}_#{node['packer']['arch']}.zip"
node.default['packer']['dist_filename'] = filename
node.default['packer']['checksum'] = node['packer']['checksums'][filename]

puts "filename : [#{filename}]"

