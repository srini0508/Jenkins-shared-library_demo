def rev = ''
pipeline {

    agent any {
   stage('Build') {
    sh(script: 'variable.groovy')
    rev = readFile('version_info')
    sh echo $rev
  }
}
}


