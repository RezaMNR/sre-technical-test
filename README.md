# sre-technical-test

This repo build base on : https://github.com/docker-archive/swarm-microservice-demo-v1

- Script app named `results-app, vote-worker and results-app` located in `script-app`
- Chef config files located in `chef-repo`
  
#### Blocker
  - Docker swarm installation : Currently I could not perform `docker swarm` installation using chef, so I decide to  perform installation manually.
  - I  use jenkins on docker then it could not execute docker pipeline, so to deploy the script from the soure I use github action, config is here : https://github.com/RezaMNR/sre-technical-test/actions and the result is here : https://hub.docker.com/u/rezamnr
  - I did not put script `vote-worker` on docker build due to error : https://github.com/RezaMNR/sre-technical-test/runs/5712548244?check_suite_focus=true#step:6:991. so I decide to use existing image on docker hub that has been build by other

## Infrastructure 

#### Chef
- Chef config located in : https://github.com/RezaMNR/sre-technical-test/tree/main/chef-repo

#### Docker
- all docker installed by chef, and the config is here :https://github.com/RezaMNR/sre-technical-test/tree/main/chef-repo/cookbooks/dockerhost

#### Docker swarm
- I installing docker swarm manually

## Deployment

