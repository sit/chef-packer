name             'packer'
maintainer       'Alex Romanov'
maintainer_email 'alex@strataconsutling.com'
license          'Apache 2.0'
description      'Installs/Configures packer'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.6.1'

depends 'ark', '~> 3.1.0'
depends 'apt'
