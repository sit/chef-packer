#
# Cookbook Name:: packer
# Recipe:: default
#
# Copyright (C) 2013 Hadapt, Inc.
#

# Install packages necessary for extracting stuff
include_recipe "ark"

ark 'packer' do
    url "#{node[:packer][:file_url]}"
    version node[:packer][:version]
    checksum node[:packer][:checksum]
    has_binaries ["packer"]
    append_env_path false
    strip_components 0

    action :install
end
