pipeline {
  agent {
        docker {
            image 'node:6-alpine' 
            args '-p 3000:3000' 
        }
   }
  stages {
    stage('Frontend') {
      steps {
        sh 'mkdir -p demo/frontend demo/backend'
        dir('demo') {
          dir('frontend') {
            git(url: 'https://github.com/Kenec/Grocerrific-Pluralsight.git', branch: 'master')
            sh 'npm install'
            sh 'npm run test:client'
          }
        }
      }
    }
    stage('Backend') {
      steps {
        dir('demo') {
          dir('backend') {
            git(url: 'https://github.com/Kenec/git-cheat-sheet.git', branch: 'master')
            sh 'npm install'
            sh 'npm run test:client'
          }
        }
        sh 'echo "GREAT SUCCESS"'
      }
    }
  }
}
