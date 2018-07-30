#
# Cookbook:: setup_docker
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'pry'

binding.pry

file '/tmp/motd' do
  content 'hello world 2'
end
