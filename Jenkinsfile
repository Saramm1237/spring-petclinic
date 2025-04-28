#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.9.6' // Versión más reciente de Maven
        }
      }
      steps {
        sh 'mvn clean install -DskipTests' // Compilamos pero saltamos los tests
        sh 'ls -la target/' // Listamos los archivos generados en target
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t shanem/spring-petclinic:latest .' // Construimos la imagen Docker
      }
    }
  }
}
