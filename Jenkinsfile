/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent any

    tools {
        go 'go_1.20.5'
        git 'Default'
        dockerTool 'docker'
    }

    stages {
        stage('Check Versions') {
            steps {
                script {
                    // Check Go version
                    def goVersion = sh(script: 'go version', returnStdout: true).trim()
                    echo "Go Version: ${goVersion}"
                    
                    // Check Docker version
                    def dockerVersion = sh(script: 'docker --version', returnStdout: true).trim()
                    echo "Docker Version: ${dockerVersion}"
                }
            }
        }

        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/panurujz/fiber.git'
                echo 'checkout success.'
            }
        }

        // stage('go install') {
        //     steps {
        //         sh 'go version'
        //     }
        // }

        // stage('docker install') {
        //     steps {
        //         echo 'install success.'
        //     }
        // }

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