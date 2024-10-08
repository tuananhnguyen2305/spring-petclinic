#!groovy

pipeline {
  agent none
  stages {

//     stage('Check Docker') {
//         agent any
//         steps {
//             git 'https://github.com/tuananhnguyen2305/spring-petclinic.git'
//             sh 'docker --version'
//         }
//     }

    stage('Build with Maven') {
        agent any
        steps {
            sh 'mvn --version'
            sh 'java -version'
            sh 'mvn clean package -Dmaven.test.failure.ignore=true'
        }
    }

    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t nta/spring-petclinic:latest .'
      }
    }
  }
}
