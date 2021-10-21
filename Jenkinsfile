pipeline {
  
  agent any
  
  options{
    timestamps()
  }  
  
  stages {
   
    stage("Build"){
      steps {  
        echo '${JENKINS.STAGE_NAME}'
      }
    }
    
    stage("Test"){
      steps{
        echo '${JENKINS.STAGE_NAME}'
      }
    }
    
    stage("Deploy"){
      steps {
        echo '${JENKINS.STAGE_NAME}'
      }
    }
    
  }
}
