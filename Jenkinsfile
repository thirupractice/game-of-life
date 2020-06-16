pipeline{
    agent {label 'UBUNTU'}
    stages{
        stage("build docker image"){
            steps{
                sh 'docker image build . -t thirupathi555/game:0.1 '
            }
        }
    }
}
