node {
	def app
	
	stage('Clone repository') {
		/* Let us make sure to clone the github repository */
		checkout scm 
	
	}
	
	stage('Build image') {
		/* This builds the image (synonymous to docker build) */

		app = docker.build("brtvino/jendock-pipeline")

	}

	stage('Test image') {
		/* Ideally this would run a future test framework that we create */
		
		app.inside {
			sh 'echo "Tests passed"'
		}

	}

	stage('Push Image') {
		docker.withRegistry('localhost:5000') {
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
		
		}
	}

}
