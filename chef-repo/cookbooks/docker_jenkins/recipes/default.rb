#
# Cookbook:: docker_jenkins
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

docker_service 'default' do
    action [:create, :start]
  end

## create a folder for volumes docker jenkins
execute "run a script" do
    user "root"
    command <<-EOH
    mkdir -p /home/jenkins_home/secrets/ /
    chmod -R 777 /home/jenkins_home/
    EOH
  end
## pull the jenkins image
docker_image 'jenkins/jenkins' do
    tag 'lts'
    action :pull
end
## run container
docker_container 'my_jenkins' do
    repo 'jenkins/jenkins'
    tag 'lts'
    port '50000:50000'
    port '8080:8080'
    volumes ['/home/jenkins_home/secrets/:/var/jenkins_home/secrets/', '/var/run/docker.sock:/var/run/docker.sock']
end