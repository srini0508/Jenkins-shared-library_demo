pipeline {
    agent any 
    
    stages {
        stage('Example Build') {
            
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, userRemoteConfigs: [[url: 'https://github.com/srini0508/Jenkins-shared-library_demo.git']]])
                echo 'Hello, Maven'
              echo '${PWD}'
                script {
                    sh 'sh +x newsm.sh'
                def LS = "${sh(script:'cat version_info', returnStdout: true).trim()}"
                    println("disk_size = ${LS}")
                    new_version = "${LS}"
                    
                }
            }
        }
        stage('Print Env') {
           
            steps {     
                script {
                    def code = load "test.groovy"                                    
                    
                    echo "${env.EXISTING_VAR}"
                    echo "${new_version}"
                }
               
                
                sh 'java -version'
              
            }
        }
    }
}
