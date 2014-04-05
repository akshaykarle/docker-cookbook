#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

package 'docker-io'

service 'docker' do
  action [:start, :enable]
end

group 'docker' do
  action :modify
  members 'vagrant'
end
