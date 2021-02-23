pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                docker build --tag=wildfly-postgres .
            }
        }
    }
}