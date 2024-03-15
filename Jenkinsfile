
pipeline {
	agent any
    stages {
        stage('Checkout'){
            steps {
                echo 'Cloning repository'
                git 'https://github.com/BoutainaChif/probleme1.git'
              }
          }
          stage('Build') {
            steps {
                echo 'Building docker image'
                sh 'sudo docker build -t chifaouiboutaina907/problem-1:0.0.1 .'
	        }
          }
          stage('Push') {
            steps {
                echo 'Pushing docker image'
                sh 'sudo docker login -u chifaouiboutaina907 -p Boutaina1993'
                sh 'sudo docker push chifaouiboutaina907/problem-1:0.0.1'
	        }
        }
    }
}