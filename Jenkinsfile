
pipeline {
	agent any
    parameters {
        string(name: 'version', defaultValue: '0.0.1', description: 'The verion that should be deployed')
    }
    stages {
        stage('Checkout'){
            steps {
                echo 'Cloning repository'
                git url: 'https://github.com/BoutainaChif/probleme1.git', branch: 'main'
              }
          }
          stage('Build') {
            steps {
                echo 'Building docker image'
                sh "sudo docker build -t chifaouiboutaina907/problem-1:${params.version} ."
	        }
          }
          stage('Push') {
            steps {
                echo 'Pushing docker image'
                sh 'sudo docker login -u chifaouiboutaina907 -p Boutaina1993'
                sh "sudo docker push chifaouiboutaina907/problem-1:${params.version}"
	        }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the container'
                sh "sudo docker pull chifaouiboutaina907/problem-1:${params.version}"
                sh "sudo docker run -d --name=problem1 -p 8888:80 chifaouiboutaina907/problem-1:${params.version}"
	        }
        }
    }
}