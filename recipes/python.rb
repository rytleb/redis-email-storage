#
# Cookbook:: exim-redis
# Recipe:: python
#
# Copyright:: 2018, The Authors, All Rights Reserved.


package 'python-pip' do
  notifies :run, 'execute[pip install redis]'
end

execute 'pip install redis' do
  command 'pip install redis'
  action :nothing
end