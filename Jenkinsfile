pipeline {
    agent any
      parameters {
          string(name: "RSG_ID", defaultValue: "Name", description: "Resource Group name")
          choice(name: "ENV_ID", choices: ["DEV", "UAT", "PRD"], description: "Environment for deploy")
  }
      environment {
        CLIENT_ID = credentials('AZURE_CLIENT_ID')
        CLIENT_SECRET = credentials('AZURE_CLIENT_SECRET')
        TENANT_ID = credentials('AZURE_TENANT_ID')
        SUB_ID = credentials('AZURE_SUB_ID')
  }

    stages {
        stage('AZ') {
            steps {
                bat 'echo %RSG_ID%'
                bat 'echo %ENV_ID%'
				bat 'echo %CLIENT_SECRET% '
				bat 'echo %TENANT_ID%'
                bat 'echo %SUB_ID%'
				bat 'az login --service-principal -u %CLIENT_ID% -p %CLIENT_SECRET% --tenant %TENANT_ID%'
				bat 'az account subscription list'
            }
        }
        stage('TF') {
            steps {
                bat 'terraform plan'
            }
        }
    }
}