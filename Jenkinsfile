pipeline {
    agent {
        node {
            label 'docker-agent-python'
            }
      }
    triggers {
        pollSCM 'H/5 * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                cd myapp
                pip install -r requirements.txt
                '''
            }
        }
        stage('Test-unittest') {
            steps {
                echo "Testing with unittest.."
                sh '''
                cd myapp
                python3 hello.py
                python3 hello.py --name=Brad
                python3 -m unittest test_hello.py
                '''
            }
        }
        stage('Test-Robot') {
            steps {
                echo "Testing with Robot Framework..."
                sh '''
                cd myapp
                python3 -m robot test_hello.robot
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}
