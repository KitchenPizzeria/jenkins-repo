def printFromFunction() {
  println("I am printing this from the function in GROOOVVVYYYYY!")
}

def replaceString() {
  def text = readFile file: "index.html" 
  text = text.replaceAll("%BUILD_NUMBER%","${BUILD_NUMBER}")
  writefile file: "index.html", text: text
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
