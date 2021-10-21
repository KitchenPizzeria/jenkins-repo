pipeline {
  
  agent any
  
  options{
    timestamps()
  }  
  
  stages {
   
    stage("My First Stage"){
      steps {
        
        echo 'This is my first stage'
         
      }
    }
    
    stage("Print Environment Variables"){
      steps{
        sh "printenv"
      }
    }
  }
}
