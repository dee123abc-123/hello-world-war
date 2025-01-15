pipeline {
    agent any
       stages 
    {
        stage('checkout') {             
            steps {
                withCredentials([usernamePassword(credentialsId: 'Jfrog_cred', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                sh """
                #!/bin/bash
                sleep 60
                sudo su
                cd /opt/apache-tomcat-10.1.34/webapps
                ls
                curl -L -u "$USER:$PASS" -O "http://3.109.60.44:8082/artifactory/hello_world_war-libs-release/com/efsavage/hello-world-war/1.0.15/hello-world-war-1.0.15.war"
                pwd
                cd /opt/apache-tomcat-10.1.34/bin
                ./shutdown.sh
                sleep 6
                pwd
                
                pwd
                cd /opt/apache-tomcat-10.1.34/bin
                ./startup.sh
                sleep 6
                """ 
                }         
            }
        }
         
    }
}
