pipeline {
    agent any

    environment {
        AWS_REGION = 'ap-south-1'
        AWS_ACCOUNT_ID = '098588167308'
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
    
    stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init -input=false'
                }
            }
        }

    stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -input=false -out=tfplan'
                }
            }
        }

    stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -input=false -auto-approve tfplan'
                }
            }
        }
    }
}
