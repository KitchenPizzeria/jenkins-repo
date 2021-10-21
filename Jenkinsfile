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
        function()
        hello()
      }
    }
    
    stage("Test"){
      parallel {
    
        stage("Test on Linux"){
          steps{
            echo 'Test on Linux'
          }
        }

        stage("Test on Windows"){
          steps {
            echo 'Test on Windows'
          }
        }
      }
    }
      
    stage("Deploy"){
      steps {
        echo 'Deploy'
      }
    }
    
  }
}
