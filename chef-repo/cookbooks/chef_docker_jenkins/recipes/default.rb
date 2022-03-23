#
# Cookbook:: chef_docker_jenkins
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
docker_service 'default' do
    group 'dockerroot'
    action [:create, :start]
  end