@Library('Jenkins-shared-library_demo')_
node()  {
    stage('Checkout') {
def rootDir = pwd()
def exampleModule = load "variable.groovy"
exampleModule.createGlobalEnvironmentVariables('Var1','12345')
}
}




