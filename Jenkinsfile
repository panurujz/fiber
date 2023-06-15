#!groovy
pipeline {
	agent any

    tools {
        go 'go_1.20.5'
    }

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/panurujz/fiber.git'
                echo 'checkout success.'
            }
        }

        stage('go install') {
            steps {
                sh 'go version'
            }
        }

        stage('docker install') {
            steps {
                echo 'install success.'
            }
        }

        stage('go build') {
            steps {
                echo 'go build success.'
            }
        }

        stage('docker build') {
            steps {
                echo 'docker build success.'
            }
        }

    }

}