pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull code from GitHub
                git 'https://github.com/Lakshmikanth0054/sample-cicd.git'
            }
        }

        stage('Docker Compose Up') {
            steps {
                script {
                    // Change to the directory where docker-compose.yml is located
                    dir('infra') {
                        // Run docker-compose to bring up the services
                        sh 'docker-compose up -d'
                    }
                }
            }
        }
    }

    post {
        always {
            // Handle any post-build steps (e.g., cleanup)
            echo 'Build complete'
        }
    }
}

