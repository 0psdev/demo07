pipeline {
    agent any
      parameters {
          string(name: "RSG_ID", defaultValue: "Name", description: "Resource Group name")
  }
      environment {
        TF_VAR_CLIENT_ID = credentials('AZURE_CLIENT_ID')
        TF_VAR_CLIENT_SECRET = credentials('AZURE_CLIENT_SECRET')
        TF_VAR_TENANT_ID = credentials('AZURE_TENANT_ID')
        TF_VAR_SUB_ID = credentials('AZURE_SUB_ID')
        TF_VAR_RSG_ID = "${RSG_ID}"
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
                bat 'terraform plan -var-file=vars.tfvars'
                bat 'terraform apply -var-file=vars.tfvars -auto-approve '
            }
        }
    }
}