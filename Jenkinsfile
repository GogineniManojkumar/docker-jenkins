node {  
    stage('Git Clone') { 
        git 'https://github.com/GogineniManojkumar/docker-jenkins.git'
    }
    stage('Build Env') { 
        sh  label: 'manoj', 
            script: '''docker-compose build
                        docker-compose up -d'''
    }
    stage('testing') { 
        sh ' curl -I http://localhost:80/'
    }
}