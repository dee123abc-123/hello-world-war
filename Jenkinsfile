pipeline {
    agent { label 'slave-1' }
    stages {
        stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/shrikantashetty/hello-world-war.git'
            }
        } 
       stage('build') {
            steps {
                sh 'cd hello-world-war'
                sh 'mvn clean package'
            }
        }
      stage('deploy') {
           steps {
             sh 'scp /home/ubuntu/jenkins/workspace/Test2Pipeline/target/hello-world-war-1.0.0.war root@172.31.39.193:/opt/apache-tomcat-10.1.34/webapps/'
               }
          }
    }
post {
    success {
        mail to: "shettyshrikanta@gmail.com",
             subject: "Jenkins Job Success",
             body: "The Jenkins job completed successfully."
    }
    failure {
        mail to: "shettyshrikanta@gmail.com",
             subject: "Jenkins Job Failed",
             body: "The Jenkins job failed. Check the logs for details."
    }
}
}
