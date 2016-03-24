#
# Cookbook Name:: packer
# Recipe:: default
#
# Copyright (C) 2013 Hadapt, Inc.
#

# Install packages necessary for extracting stuff
include_recipe "ark"

ark 'packer' do
    url "#{node['packer']['url_base']}/#{node['packer']['version']}/#{node['packer']['dist_filename']}"
    version node['packer']['version']
    checksum node['packer']['checksum']
    has_binaries ['packer']
    append_env_path false
    strip_components 0

    action :install
end
