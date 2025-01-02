pipeline {
    agent { label 'slave_95' }
    stages {
        stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/dee123abc-123/hello-world-war.git'
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
             sh 'scp /home/ubuntu/workspace/sample_pipe/target/hello-world-war-1.0.0.war root@ip-172-31-4-54:/opt/apache-tomcat-10.1.34/webapps/'
               }
          }
    }
    
post {
    success {
        mail to: "deepak.padmanabhan.nambiar@gmail.com",
             subject: "Jenkins Job Success",
             body: "The Jenkins job completed successfully."
    }
    failure {
        mail to: "deepak.padmanabhan.nambiar@gmail.com",
             subject: "Jenkins Job Failed",
             body: "The Jenkins job failed. Check the logs for details."
    }
}
}
