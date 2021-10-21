@Library('jenkins_shared') _

def printFromFunction() {
  println("I am printing this from the function in GROOOVVVYYYYY!")
}

pipeline {
  
  agent any

  
  options{
    timestamps()
  }  
  
  stages {
   
    stage("Build"){
      steps {  
        echo "The name of this stage: ${STAGE_NAME}"
        printFromFunction()
        replaceString()
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
