pipeline {
    agent any

    stages {
        stage('Start Apache2') {
            steps {
                sh '''
                    sudo systemctl start apache2 || sudo service apache2 start
                    sudo systemctl enable apache2 || true
                '''
            }
        }

        stage('Check Apache2') {
            steps {
                sh 'curl -I http://localhost'
            }
        }
    }
}
