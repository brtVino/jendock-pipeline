pipeline {
  agent any
  stages {
    stage('Pre-Build') {
      steps {
        sh '''#!/usr/bin/python3


try:
    print("this is a line")

except Exception, e:
    print(str(e))


'''
      }
    }
  }
  environment {
    REGISTRY = 'system-services.bluerivertech.com:16000'
  }
}