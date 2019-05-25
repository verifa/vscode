pipeline {
	agent {
    kubernetes {
      label 'vscode'
      defaultContainer 'jnlp'
      yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: yarn-build
    image: node:current-alpine
    command:
    - cat
    tty: true
"""
    }
  }
  stages {
    stage('Build') {
      steps {
        container('yarn-build') {
          sh 'yarn compile'
        }
      }
    }
  }
}