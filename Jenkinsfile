#!groovy
pipeline {
	agent none
  stages {
  	stage('Go Install') {
      tool name: 'docker_latest', type: 'dockerTool'
      tool name: 'go_latest', type: 'go'
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