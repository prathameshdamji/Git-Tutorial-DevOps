node{
    stage('SCM checkout'){
        git credentialsId: 'GitHubCredentials', url: 'https://github.com/prathameshdamji/Git-Tutorial-DevOps'
    }
    stage('Build Docker Image'){
        sh 'docker build -t dockerpd/demo .'
    }
    stage('Push Docker Images'){
        sh "docker login -u dockerpd -p psd9028211296"
        
        sh 'docker push dockerpd/demo:latest1000'
    }
    stage('Run Container on Dev Server'){
        sh 'docker run dockerpd/demo:latest'
    }
    stage('Showing Docker Images & Containers'){
        sh 'docker images'
        sh 'docker ps'
        sh 'docker ps -a'
    }
}
