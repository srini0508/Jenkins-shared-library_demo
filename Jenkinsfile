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
                    sh 'sh +x newsm.sh'
                def LS = "${sh(script:'cat version_info', returnStdout: true).trim()}"
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
