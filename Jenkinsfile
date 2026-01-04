pipeline {
    agent any

    stages {
        stage('Install Apache2') {
            steps {
                echo "Installing sudo and Apache2..."
                sh '''
                    sudo apt-get update
                    sudo apt-get install -y apache2
                '''
            }
        }

        stage('Start Apache2') {
            steps {
                echo "Starting Apache2..."
                sh '''
                    sudo systemctl start apache2 || sudo service apache2 start
                    sudo systemctl enable apache2 || true
                '''
            }
        }

        stage('Check Apache2') {
            steps {
                echo "Checking Apache2..."
                sh 'curl -I http://localhost'
            }
        }
    }
}
