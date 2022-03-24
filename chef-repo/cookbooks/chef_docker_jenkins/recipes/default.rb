#
# Cookbook:: chef_docker_jenkins
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
docker_service 'default' do
  group 'dockerroot'
  action [:create, :start]
end

# Pull official Jenkins image
docker_image 'jenkinsci/jenkins' do
  tag 'lts'
  action :pull
end

docker_volume 'jenkins-data' do
  action :create
end

# Run container
docker_container 'jenkins' do
  repo 'jenkinsci/jenkins'
  tag 'lts'
  action :run
  port '8080:8080'
  volumes 'jenkins-data:/var/jenkins_home/'
end