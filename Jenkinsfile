pipeline {
    agent any
    options {
  buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '4', daysToKeepStr: '', numToKeepStr: '4')
    }
    environment {
      EMAIL_TO = 'nikhil.verma@innobitsystems.com'
      HOME = '.'
      PROJECT_ID ='idyllic-anvil-326612'

    }
    stages{
        stage('tag and push') {
          steps{
            withCredentials([file(credentialsId: 'gcp-project-key', variable: 'gcp_cred_nik')]) {
            // sh 'cat /root/idyllic-anvil-326612-68b473297701.json | docker login -u  _json_key --password-stdin  https://gcr.io/idyllic-anvil-326612'
            sh 'cat ${gcp_cred_nik} | docker login -u  _json_key --password-stdin  https://gcr.io/idyllic-anvil-326612'
            sh 'docker tag vms_mysql gcr.io/${PROJECT_ID}/${JOB_NAME}:v1.${BUILD_NUMBER}'
            sh 'docker push gcr.io/${PROJECT_ID}/${JOB_NAME}:v1.${BUILD_NUMBER}'
            }
          }
        }
      }
    }

