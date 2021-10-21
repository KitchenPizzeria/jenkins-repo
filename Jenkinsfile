@Library('jenkins_shared') _

pipeline {
  
  agent any

  
  options{
    timestamps()
  }  
  
  stages {
   
    stage("Build"){
      steps {  
        echo "The name of this stage: ${STAGE_NAME}"
        greeting("Joseph")
        
        script {
          utils.printFromFunctions()
          utils.replaceString()
        }
      
        
      }
    }
    
    stage("Test"){
      parallel {
    
        stage("Test on Linux"){
          steps{
            echo "The name of this stage: ${STAGE_NAME}"
          }
        }

        stage("Test on Windows"){
          steps {
            echo "The name of this stage: ${STAGE_NAME}"
          }
        }
      }
    }
      
    stage("Deploy"){
      steps {
        echo "The name of this stage: ${STAGE_NAME}"
      }
    }
    
  }
}
