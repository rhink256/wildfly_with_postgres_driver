pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build --tag=wildfly-postgres .'
            }
        }
        stage('Publish') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'nexus', usernameVariable: 'nexusUser', passwordVariable: 'nexusPass')]) {
                    sh 'docker login nexus.local:8080 --username $nexusUser --password $nexusPass'
                }
                sh 'docker image tag wildfly-postgres nexus.local:8080/rhink/wildfly-postgres:latest'
                sh 'docker image push nexus.local:8080/rhink/wildfly-postgres:latest'
            }
        }
    }
}
