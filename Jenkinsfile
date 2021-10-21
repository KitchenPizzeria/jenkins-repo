pipeline {
  
  agent any
  
  options{
    timestamps()
  }  
  
  stages {
   
    stage("Build"){
      steps {  
        echo '&{STAGE_NAME}'
      }
    }
    
    stage("Test"){
      steps{
        echo '&{STAGE_NAME}'
      }
    }
    
    stage("Deploy"){
      steps {
        echo '&{STAGE_NAME}'
      }
    }
    
  }
}
