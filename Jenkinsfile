node{
    stage('SCM checkout'){
        git credentialsId: 'Git-Login', url: 'https://github.com/prathameshdamji/Git-Tutorial-DevOps'
    }
    stage('Build Docker Image'){
        sh 'sudo docker build -t dockerpd/git-tutorial-devops .'
    }
    stage('Push Docker Images'){
        withCredentials([string(credentialsId: 'docker-password', variable: 'docker-password')]) {
            sh "sudo docker login -u dockerpd -p ${docker-password}"
        }
        sh 'sudo docker push dockerpd/git-tutorial-devops:latest'
    }
    stage('Run Container on Dev Server'){
        sh 'sudo docker run dockerpd/git-tutorial-devops:latest'
    }
    stage('Showing Docker Images & Containers'){
        sh 'sudo docker images'
        sh 'sudo docker ps'
        sh 'sudo docker ps -a'
    }
}
