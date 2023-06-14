pipeline {
    agent any
    environment {
        imagename = "panurujz/fiber"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    stages {
    stage('Cloning Git') {
      steps {
        git([url: 'https://github.com/panurujz/fiber.git', branch: 'main', credentialsId: 'github'])
 
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build imagename
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
             dockerImage.push('latest')
          }
        }
      }
    }
    post {
        always {
            echo 'push image success.'
        }
    }
}
