pipeline {
    agent none
    stages {
        stage('Test') {
            agent { 
                dockerfile {
                    args '-u root --privileged'
                }
            }
            steps {
                sh 'php -v'
                sh 'whoami'
                sh 'service mysql start'
                sh 'mysql --version'
            }
        }
    }
}
