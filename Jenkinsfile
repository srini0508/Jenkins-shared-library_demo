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
                    println("newVersion = ${LS}")
                    new_version = "${LS}"
                    
                }
            }
        }
        stage('Print Env') {
           
            steps {     
                
                build job: 'checkvervariable', parameters: [[$class: 'StringParameterValue', name: 'VER', value: new_version]]                                      
                    
                   
                    echo "${new_version}"
                
               
                
                sh 'java -version'
              
            }
        }
        stage('upload artifact') {
           
            steps {    
                echo "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBTTTTTTTTTTTTTTTTTTTTTTTT"
                echo "${new_version}"
                nexusArtifactUploader artifacts: [[artifactId: 'newartifact', classifier: '', file: '/var/lib/jenkins/123.txt', type: '.txt']], credentialsId: '20ce1308-3d3c-42c5-9a73-03a85f69a966', groupId: 'newgroup', nexusUrl: '3.239.58.38:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'newrepo', version: new_version
               
                
                sh 'java -version'
              
            }
        }
    }
}
