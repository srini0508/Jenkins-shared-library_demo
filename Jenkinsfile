import hudson.EnvVars;
import hudson.slaves.EnvironmentVariablesNodeProperty;
import hudson.slaves.NodeProperty;
import hudson.slaves.NodePropertyDescriptor;
import hudson.util.DescribableList;
import jenkins.model.Jenkins;
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
                               
                def code = load 'variable.groovy'
                createGlobalEnvironmentVariables('h','y')
              }
              echo "${h}"
                echo "${disk_size}"
                echo "${release_Version}"
                
                sh 'java -version'
              
            }
        }
    }
}
