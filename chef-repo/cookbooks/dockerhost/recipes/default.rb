#
# Cookbook:: dockerhost
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

docker_service 'default' do
  action [:create, :start]
end

# config to activate docker swarm
# swarm  = begin
#   chef_vault_item('docker', 'swarm')\
#     [node.policy_group]
# rescue Net::HTTPServerException
#   {}
# end

# execute 'join swarm' do
#   command 'docker swarm join '\
#     "--token #{swarm['token']} #{swarm['manager']}"
#   not_if { swarm.empty? }
#   not_if 'docker info -f "{{.Swarm.LocalNodeState}}" | egrep "^active"'
# end