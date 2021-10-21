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
        
        script{
          utils.replaceString()
        }
      }
    }
    
    stage("Test") {
      steps {            
        sh """
          ! /bin/bash
          cat index.html | grep \"<p>This is jenkins ran job with build number: ${BUILD_NUMBER}</p>\"
        """
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
