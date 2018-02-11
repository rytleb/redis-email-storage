#
# Cookbook:: exim-redis
# Recipe:: exim-server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package ['exim', 'mailx'] do
  action :install
end

service 'exim' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end

execute 'setmta' do
  command 'sudo alternatives --set mta /usr/sbin/sendmail.exim'
end

template '/etc/exim/exim.conf' do
  source 'exim.conf.erb'
  notifies :restart, 'service[exim]'
end