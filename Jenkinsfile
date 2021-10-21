@Library('jenkins_shared') _

pipeline {
  
  agent any
  
  options{
    timestamps()
  }  
  
  script {
     env.text = readFile file: "index.html" 
  }
  
  stages {
   
    stage("Build"){
      steps {  
        echo "The name of this stage: ${STAGE_NAME}"
        greeting("Joseph")
        
        script {
          env.text = utils.replaceString(text)
        }
      
        
      }
    }
    
    stage("Test"){
      parallel {
    
        stage("Test on Linux"){
          steps{
            script{
              if ( env.text.matches(%{BUILD_NUMBER}) ) {
                echo "Correct build number"
              }
            }
          }
        }

        stage("Test on Windows"){
          steps {
            echo "The name of this stage: ${STAGE_NAME}"
          }
        }
      }
    }
    
    stage("Package Artifact"){
      steps{
        sh """
          mkdir -p build
          mv index.html build
          tar -zcvf build.tgz build
        """
      }
    }
    
    stage("Archive Artifact"){
      steps{
        archiveArtifacts artifacts: 'build.tgz', onlyIfSuccessful: true
      }
    }
      
    stage("Deploy"){
      steps {
        echo "The name of this stage: ${STAGE_NAME}"
      }
    }
    
  }
}
