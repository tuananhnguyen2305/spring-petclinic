#!groovy
pipeline {
    agent none
   stages {
    stage('Maven Install') {
      agent {
       docker {
         image 'maven:3.5.0'
         args '-v $HOME/.m2:/root/.m2'
     }
  }
  steps {
       sh 'mvn clean install'
       }
     }
   }
 }
