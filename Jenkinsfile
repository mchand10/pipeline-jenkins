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
        }
        stage('Test') {
            steps {
                sh ''' 

                ./Test.sh mvn test
                
                '''
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
