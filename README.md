# packer cookbook

Installs [Packer](http://packer.io/) using the [ark](https://github.com/opscode-cookbooks/ark) cookbook.

# Requirements

None.

# Usage

Just include `recipe[packer]` in your run list.

This will put Packer into `/usr/local` in a `packer-*version*` directory, with a symlink of `packer` to `/usr/local/bin`.

# Attributes

* `node[:packer][:url_base]` - Base URL from which to download (in case you have your own mirror). Defaults to the link at http://www.packer.io/downloads.html.
* `node[:packer][:version]` - The version of Packer to install.
* `node[:packer][:arch]` - Architecture to use; auto-detects amd64 and 386 but you must override with arm if desired.
* `node[:packer][:checksum]` - SHA-256 checksum of appropriate binary. Should be auto-detected.
* `node[:packer][:raw_checksums]` - The contents of the upstream checksum file to allow checksum auto-detection.

# Author

Author:: Emil Sit (<sit@hadapt.com>)
