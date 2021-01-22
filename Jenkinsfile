@Library('Jenkins-shared-library_demo')_
pipeline {
    agent any
    environment {
        UTILITY = load pwd() + '/variable.groovy'
    }
    stages {
        stage ('Example') {
            steps {
                script {
                scripts=load pwd() + '/variable.groovy'
                    sh "${UTILITY.createGlobalEnvironmentVariables('Var2',12345)}"
                    sh echo $Var2
            }

            }
            
        }
}
}




