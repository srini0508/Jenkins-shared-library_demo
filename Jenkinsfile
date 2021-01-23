pipeline {
    agent any 
    stages {
        stage('Example Build') {
            
            steps {
                echo 'Hello, Maven'
                sh(script: 'build')
                rev = readFile('result')
            }
        }
        stage('Example Test') {
           
            steps {
                echo 'Hello, JDK'
                sh 'java -version'
            }
        }
    }
}
