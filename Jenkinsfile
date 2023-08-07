#!/usr/bin/env groovy

pipeline {
  agent {dockerfile true}
  environment {
    IMAGE_NAME = "liferay/dxp"
    PROJECT_KEY = "orca-demo-for-liferay"
  }
  stages {
    stage('scan') {
      steps {
        withCredentials([string(credentialsId: 'ORCA_SECURITY_API_TOKEN', variable: 'TOKEN')]) {
          sh '''
            orca-cli -p ${PROJECT_KEY} image scan ${IMAGE_NAME} --api-token aHR0cHM6Ly9hcHAudXMub3JjYXNlY3VyaXR5LmlvfHxsSVY4N2w2SFFXMUhzQ2Zma21jMzlyTGFhemRJQmdnNw==
          '''
        }
      }
    }
  }
}
