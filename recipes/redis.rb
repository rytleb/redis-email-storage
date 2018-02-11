#
# Cookbook:: exim-redis
# Recipe:: redis
#
# Copyright:: 2018, The Authors, All Rights Reserved.


yum_package 'redis' do
  action :install
  notifies :start, 'service[redis]', :immediately
end

service 'redis' do
  supports status: true, restart: true, reload: true
  action :enable
end  