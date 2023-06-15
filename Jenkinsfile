#!groovy
pipeline {
	agent none

    tools {
        go 'go_latest'
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
            // One or more steps need to be included within the steps block.
            }
        }

        stage('go build') {
            steps {
            // One or more steps need to be included within the steps block.
            }
        }

        stage('docker build') {
            steps {
            // One or more steps need to be included within the steps block.
            }
        }

    }

}