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
                    disk_size = "${LS}"
                    withEnv(['release_Version=' + disk_size]) {
    // some block
}
                }
            }
        }
        stage('Print Env') {
           
            steps {     
                script {
                    def code = load "test.groovy"
                    echo "${disk_size}"
                }
               
                
                sh 'java -version'
              
            }
        }
    }
}
