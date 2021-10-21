pipeline {
  
  agent any
  
  options{
    timestamps()
  }  
  
  stages {
   
    stage("Build"){
      steps {  
        sh 'printenv'
        echo '${env.STAGE_NAME}'
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
