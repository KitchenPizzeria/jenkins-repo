pipeline {
  
  agent any
  
  options{
    timestamps()
  }  
  
  environment {
    stage_name = "${STAGE_NAME}"
  }
  
  stages {
   
    stage("Build"){
      steps {  
        echo '${env.STAGE_NAME}'
      }
    }
    
    Stage("Test"){
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
