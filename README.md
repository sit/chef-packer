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
* `node[:packer][:raw_checksums]` - The contents of the upstream checksum file to allow checksum auto-detection.
* `node[:packer][:checksums]` - A `Hash` mapping file name to checksums, derived by default from `raw_checksums`.
* `node[:packer][:checksum]` - SHA-256 checksum of appropriate binary. Should be auto-detected for the default version using data in `raw_checksums` or `checksums`.

When overriding with a particular desired version, you can set the checksum a variety of ways. When
this cookbook is updated for a new default version, the checksums will be updated by the maintainers.

If you require a particular older (or newer) version, you can update the
`raw_checksums` with the official SHA256SUM list from
`https://dl.bintray.com/mitchellh/packer/${VERSION}_SHA256SUMS?direct`
(easiest), directly override the `checksums` attribute with an explicit map of
just the versions you want (somewhat more work for you), or just directly
setting the `checksum` attribute (if you only need a single platform).

Note that you can also ignore the checksum variables if you don't care about downloading
the binary repeatedly as [Chef only uses the checksum to avoid re-downloads][remote_file], and not
to verify integrity.

[remote_file]: http://docs.opscode.com/resource_remote_file.html#file-re-downloads

# Author

Author:: Emil Sit (<sit@hadapt.com>)
