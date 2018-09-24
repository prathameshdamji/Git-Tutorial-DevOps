node{
    stage('SCM checkout'){
        git credentialsId: 'Git-Login', url: 'https://github.com/prathameshdamji/Git-Tutorial-DevOps'
    }
    stage('Build Docker Image'){
        sh 'docker build -t git-tutorial-devops .'
    }
    stage('Push Docker Images'){
        withCredentials([string(credentialsId: 'docker-password', variable: 'docker-password')]) {
            sh "docker login -u dockerpd -p ${docker-password}"
        }
        sh 'docker push dockerpd/git-tutorial-devops:latest'
    }
    stage('Run Container on Dev Server'){
        sh 'docker run dockerpd/git-tutorial-devops:latest'
    }
    stage('Showing Docker Images & Containers'){
        sh 'docker images'
        sh 'docker ps'
        sh 'docker ps -a'
    }
}
