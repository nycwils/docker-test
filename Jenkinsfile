node {
    def app

    stage("Clone repository") {
        checkout scm
    }

    stage("Build image") {
        //this builds the docker image
        //app = docker.build("nyuwilson/wilson:jenkinsdockerpush")
        echo "Hello"
        sh "echo hello from the shell"

        withCredentials([string(credentialsId: '92045f3a-fdb3-491e-ad2e-d6b9fe7aa3e5', variable: 'TOKEN')]) {
        sh "ec2-user@3.93.218.251 -i TOKEN -o 'StrictHostKeyChecking=no' 'pwd; cd /var/www/html;'"
        set +x
       
        
        }


    }

    stage("Test image") {

        echo "Hello"
        sh "echo hello2 from the shell2"
       
    }

  

}
