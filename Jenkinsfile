#!/usr/bin/env groovy

pipeline {
  agent none
  environment {
    IMAGE_NAME = "image1"
    PROJECT_KEY = "security-project-376222"
  }
  stages {
    agent {
      docker {
        image 'ubuntu:22.04'
        reuseNode true
      }
    }
    steps {
      withCredentials([string(credentialsId: 'ORCA_SECURITY_API_TOKEN', variable: 'TOKEN')]) {
        sh '''
          sudo apt-get update && apt-get install sudo && apt-get install -y curl
          curl -sfL 'https://raw.githubusercontent.com/orcasecurity/orca-cli/main/install.sh' | bash
          orca-cli -p ${PROJECT_KEY} image scan ${IMAGE_NAME}
        '''
      }
    }
  }
}