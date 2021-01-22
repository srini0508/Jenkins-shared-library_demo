@Library('Jenkins-shared-library_demo')_
pipeline {
    agent none
    environment {
        UTILITY = load pwd() + '/variable.groovy'
    }
    stages {
        stage ('Example') {
            steps {
sh "${UTILITY.createGlobalEnvironmentVariables('Var1','12345')}"
            }
            
        }
}
}




