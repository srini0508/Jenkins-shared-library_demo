@Library('Jenkins-shared-library_demo')_
pipeline {
    agent none
    stages {
        stage ('Example') {
            steps {
def rootDir = pwd()
def exampleModule = load "variable.groovy"
exampleModule.createGlobalEnvironmentVariables('Var1','12345')
            }
        }
}
}




