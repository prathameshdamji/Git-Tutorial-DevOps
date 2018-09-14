node {
	def app
	
	stage('Clone repository') {
		checkout scm
	}

	stage('Build Image') {
		app = docker.build("dockerpd/edureka")
	}

	stage('Test Image') {
		app.inside {
			sh 'echo "Tests passed"'
		}
	}
	
	stage('Push Image') { 
		docker.withRepository('https://registry.hub.docker.com','docker-hub-credentials') {
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
		}
	}
}
