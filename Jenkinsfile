pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                sh 'git clone https://github.com/dee123abc-123/hello-world-war'
            }
        }
             stage('build') {
            steps {
                sh 'cd hello-world war'
                echo 'Hello Devops'
            }
        }
    }
}

