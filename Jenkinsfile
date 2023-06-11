pipeline {
    agent any
      parameters {
          string(name: "RSG_ID", defaultValue: "Name", description: "Resource Group name")
          choice(name: "ENV_ID", choices: ["DEV", "UAT", "PRD"], description: "Environment for deploy")
  }
      environment {
        TF_VAR_CLIENT_ID = credentials('AZURE_CLIENT_ID')
        TF_VAR_CLIENT_SECRET = credentials('AZURE_CLIENT_SECRET')
        TF_VAR_TENANT_ID = credentials('AZURE_TENANT_ID')
        TF_VAR_SUB_ID = credentials('AZURE_SUB_ID')
        TF_VAR_RSG_ID = parameters('RSG_ID')
        TF_VAR_ENV_ID = parameters('ENV_ID')
  }

    stages {
        stage('AZ') {
            steps {
				bat 'echo %TF_VAR_CLIENT_SECRET% '
				bat 'echo %TF_VAR_TENANT_ID%'
                bat 'echo %TF_VAR_SUB_ID%'
				bat 'az login --service-principal -u %TF_VAR_CLIENT_ID% -p %TF_VAR_CLIENT_SECRET% --tenant %TF_VAR_TENANT_ID%'
				bat 'az account subscription list'
            }
        }
        stage('TF') {
            steps {
                bat 'terraform init'
                bat 'terraform plan -var "RSG_NAME=%TF_VAR_RSG_ID%"'
            }
        }
    }
}