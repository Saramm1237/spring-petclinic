Agregar una etapa de compilación de Docker al archivo Jenkins
1. Confirme que Spring PetClinic se esté instalando correctamente. A continuación, empaquete nuestra aplicación dentro de una imagen usando el Dockerfile creado previamente. Es hora de otra etapa de Jenkinsfile. En esta etapa, no necesitaremos usar una imagen de Docker específica, así que cualquier agente servirá. La imagen se creará usando el Dockerfile en el directorio actual y se etiquetará con mi nombre de usuario y repositorio de Docker Hub como la imagen más reciente.

#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t shanem/spring-petclinic:latest .'
      }
    }
  }
}