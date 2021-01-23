def rev = ''
node('build') {
   stage('Build') {
    sh(script: 'variable.groovy')
    rev = readFile('version_info')
    sh echo $rev
  }
}



