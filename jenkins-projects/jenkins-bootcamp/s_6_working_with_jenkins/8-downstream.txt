pipeline{
    agent any
    stages{
        stage('First job'){
            steps{
                echo "this is a downstream job"
            }
        }
    }
}
