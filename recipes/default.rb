#
# Cookbook:: exim-redis
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
=begin
package 'epel' do
  source 'https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm';
  action :install
  provider Chef::Provider::Package::Rpm
end

remote_file "#{Chef::Config[:file_cache_path]}/webtatic_repo_latest.rpm" do
    source "https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm"
    action :create
end

rpm_package "epel" do
    source "#{Chef::Config[:file_cache_path]}/webtatic_repo_latest.rpm"
    action :install
end
=end

package 'epel-release' do
  action :install
end


include_recipe 'exim-redis::exim-server'
include_recipe 'exim-redis::redis'
include_recipe 'exim-redis::python'
include_recipe 'exim-redis::forward'