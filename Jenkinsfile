#!groovy
pipeline {
	agent none
  stages {
  	stage('Go Install') {
    	agent {
      	docker {
        	image 'go:1.20.5-alpine'
        }
      }
      steps {
      	sh 'go build'
      }
    }
    stage('Docker Build') {
    	agent any
      steps {
      	sh 'docker build -t panurujz/fiber:latest .'
      }
    }
  }
}