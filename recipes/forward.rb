#
# Cookbook:: exim-redis
# Recipe:: forward
#
# Copyright:: 2018, The Authors, All Rights Reserved.

user 'catchall' do
  name 'catchall'
  home '/home/catchall'
  manage_home true
  notifies :create, 'template[/home/catchall/store_to_redis.py]'
  action :create
end

template '/home/catchall/store_to_redis.py' do
  source 'store_to_redis.py.erb'
  user 'catchall'
  group 'catchall'
  mode 0755
end


template '/home/catchall/.forward' do
  action :create
  source 'forward.erb'
  user 'catchall'
  group 'catchall'
end