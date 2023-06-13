pipeline {
    agent any
   
    environment {
        AWS_ACCESS_KEY_ID = credentials('Danny_AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('Danny_AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-2"
    }
    stages {
        stage('Checkout') {
            steps {
           git branch: 'main', url: 'https://github.com/DonBonerunsing/ecs-quick.git'
  
            }
        }
    
        stage ("terraform init") {
            steps {
                sh "terraform init" 
            }
        }
  
        stage ("plan") {
            steps {
                sh "terraform plan" 
            }
        }
         stage ("check") {
            steps {
                sh "terraform validate" 
            }
        }
        stage ("action") {
            steps {
                sh "terraform ${action} --auto-approve" 
           }
        }
    }
}
   
    
