def rev=''
pipeline {
    agent any 
    environment {
        LS = ''
    }
    stages {
        stage('Example Build') {
            
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, userRemoteConfigs: [[url: 'https://github.com/srini0508/Jenkins-shared-library_demo.git']]])
                echo 'Hello, Maven'
                script {
                def LS = "${sh(script:'ls -lah', returnStdout: true).trim()}"
                    println("disk_size = ${LS}")
                }
            }
        }
        stage('Example Test') {
           
            steps {
               println("disk_size = ${LS}")
                sh 'java -version'
            }
        }
    }
}
