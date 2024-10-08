#!groovy

pipeline {
  agent none
  stages {

    stage('Check Docker') {
        agent any
        steps {
            git 'https://github.com/tuananhnguyen2305/spring-petclinic.git'
            sh 'docker --version'
        }
    }

    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
          label ''
        }
      }
      steps {
        sh 'mvn clean install'
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
