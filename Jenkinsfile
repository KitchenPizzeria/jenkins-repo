@Library('jenkins_shared') _

pipeline {
  
  agent any
  
  options {
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
            chmod +x contains.sh 
            ./contains.sh "jenkins"
          """
      } 
    }
    
    stage("Package Artifact"){
      steps {
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
        sshPublisher(
          publishers: [
            sshPublisherDesc(
              configName: 'AWS deployment server', 
              transfers: [
                sshTransfer(
                  cleanRemote: false,
                  excludes: '', 
                  execCommand: '''tar -zxvf build.tgz 
                                mv build/index.html /var/www/html/index.html''', 
                  execTimeout: 120000, 
                  flatten: false, 
                  makeEmptyDirs: false, 
                  noDefaultExcludes: false, 
                  patternSeparator: '[, ]+', 
                  remoteDirectory: '', 
                  remoteDirectorySDF: false, 
                  removePrefix: '', 
                  sourceFiles: 'build.tgz'
                )
              ], usePromotionTimestamp: false, useWorkspaceInPromotion: false,  verbose: false)])
      }
    }
    
  }
  
  post {
    always {
      archiveArtifacts artifacts: 'index.html'
    }
  }
  
  
  
  
  
  
  
  
  
  
}
