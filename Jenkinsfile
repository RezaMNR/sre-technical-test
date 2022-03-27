node{
    stage('Push web-vote-app to swarm'){
        sshagent(['dockerhost']) {
          sh "ssh -o StrictHostkeyChecking=no -l root 167.172.74.173 docker service rm web-vote-app || true"
          sh "ssh -o StrictHostkeyChecking=no -l root 167.172.74.173 docker service create --name  web-vote-app -p 8081:80 --replicas 1 rezamnr/web-vote-app" 

        }
    }
    stage('Push results-app to swarm'){
        sshagent(['dockerhost']) {
            sh "ssh -o StrictHostkeyChecking=no -l root 167.172.74.173 docker service rm results-app || true"
            sh "ssh -o StrictHostkeyChecking=no -l root 167.172.74.173 docker service create --name  web-vote-app -p 8082:80 --replicas 1 rezamnr/results-app" 

        }
    }
    stage('Push vote-worker to swarm'){
        sshagent(['dockerhost']) {
            sh "ssh -o StrictHostkeyChecking=no -l root 167.172.74.173 docker service rm vote-worker || true"
            sh "ssh -o StrictHostkeyChecking=no -l root 167.172.74.173 docker service create --name  vote-worker  --replicas 1 mikegoelzer/s2_worker" 

        }
    }
}