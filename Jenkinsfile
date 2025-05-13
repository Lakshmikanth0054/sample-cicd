pipeline {
    agent any

    stages {
        

        stage('Verify docker-compose.yml Exists') {
            steps {
                // List contents of the cicd folder to verify the YAML file is there
                sh 'ls -l cicd'
            }
        }

        stage('Run Docker Compose') {
            steps {
                // Run docker-compose from inside the cicd folder
                sh 'docker-compose -f cicd/docker-compose.yml up -d'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
