import hudson.*;

def release_Version='fgdfgsdfgffv bfgfbgfnbfgnf'

def example1() {
  println 'Hello from example1'
}
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
        stage('Example Test') {
           
            steps {
              script{
                               
                def code = load 'test.groovy'
                code.generateStage("dff", "path.dfd.test", "dfdf", ["SOMEdfdf_ENV_VAR=\"ENV_dfdfdVALUE\""])
              }
              
                echo "${disk_size}"
                echo "${release_Version}"
                
                sh 'java -version'
              
            }
        }
    }
}
