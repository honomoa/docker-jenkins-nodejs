# DOCKER-JENKINS-NODEJS

Nodejs fit for jenkins pipeline

# How To Use

Jenkinsfile:

```
pipeline {
  agent {
    docker {
      image 'honomoa/jenkins-nodejs'
    }
  }
  stages {
    stage('Clone scm') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']],
          userRemoteConfigs: [[url: 'http://git-server/user/repository.git']]])
      }
    }
    stage('Run Nodejs') {
      steps {
        sh 'npm --version'
        sh 'node --version'
      }
    }
  }
}
```
