pipeline {
    agent any

    environment {
    
    PASS=credentials('registry-pass')
    
    }

    
    stages {
        stage('Build') {
            steps {
                sh '''

                ./maven.sh mvn -B -DskipTests clean package
                ./build.sh
                '''

            }

	     post {
                success {
                   archiveArtifacts artifacts: 'target/*.jar', onlyIfSuccessful: true
                }
             }


        }
        stage('Test') {
            steps {
                sh ''' 

                ./Test.sh mvn test
                
                '''
            }

            post {
        	always {
            junit 'target/surefire-reports/*.xml'
        }
    } 

        }

        stage('Push') {
            steps {
                sh '''

                ./push/dockerpush.sh

                '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                ./deploy/deploy.sh
                '''
            }
        }
    }
}
