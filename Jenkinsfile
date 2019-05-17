node('master') {
    def app

    stage("Clone repository") {
        checkout scm
    }

    stage("Build Docker") {


        withCredentials([usernamePassword(credentialsId: 'wilson-docker-hub', usernameVariable: 'USERNAME', passwordVariable: 'dockerHubPassword')]) {
      
        sh 'echo $PASSWORD'
     
        echo "username is $USERNAME"
              sh "docker login --username=nyuwilson --password=$dockerHubPassword"
              sh "docker build -t nyuwilson/wilson:jenkinsdockerpush ."
              sh "docker push nyuwilson/wilson"
              sh "docker system prune"
        }

        // withCredentials([string(credentialsId: 'wilson-docker-hub', variable: 'dockerHubPassword')]) {
        //    sh " docker login --username=nyuwilson --password=$dockerHubPassword"
        //      sh "docker build -t nyuwilson/wilson:jenkinsdockerpush ."
        //      sh "docker push nyuwilson/wilson"
        // }

     

        // withCredentials([file(credentialsId: 'wilson-docker-hub', variable: 'dockerHubPassword')]){
            
        //     //this should build the docker image  
        //     sh " docker login --username=nyuwilson --password=$dockerHubPassword"
        //     sh "docker build -t nyuwilson/wilson:jenkinsdockerpush ."
        //     sh "docker push nyuwilson/wilson"

           
        // }

        // dir('subdir') {
        // withCredentials([file(credentialsId: '92045f3a-fdb3-491e-ad2e-d6b9fe7aa3e5', variable: 'FILE')]) {
        // sh 'use $FILE'
        // sh "ec2-user@3.93.218.251 -i $FILE -o 'StrictHostKeyChecking=no' 'pwd; cd /var/www/html;'"
        //  set +x
        //     }
        // }

        //this builds the docker image
        //app = docker.build("nyuwilson/wilson:jenkinsdockerpush")
        // echo "Hello"
        // sh "echo hello from the shell"

        // withCredentials([string(credentialsId: '92045f3a-fdb3-491e-ad2e-d6b9fe7aa3e5', variable: 'TOKEN')]) {
        // sh "ec2-user@3.93.218.251 -i TOKEN -o 'StrictHostKeyChecking=no' 'pwd; cd /var/www/html;'"
        // set +x
       
        
        // }


    }

    stage("Run Ancible Playbook") {

        //echo "Hello"
        //sh "echo hello2 from the shell2"
        //sh "'ls; pwd; pwd; ls; ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt; 'StrictHostKeyChecking=no';'"
         withCredentials([file(credentialsId: '92045f3a-fdb3-491e-ad2e-d6b9fe7aa3e5', variable: 'mySecretKey')]){
            //sh "ssh ec2-user@3.93.218.251 -i \$mySecretKey -o 'StrictHostKeyChecking=no' 'ls; pwd; pwd; cd /var/www/html; pwd; ls; ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt; 'StrictHostKeyChecking=no';'"
            sh "pwd"
            sh "pwd"
            sh "cp \$mySecretKey /var/lib/jenkins/workspace/test-wilson-aws-training-pipeline"
            sh "ls"
            sh "ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt"
        }
       
    }

  
    stage("Wipe Out Jenkins Temp Workspace") {

      deleteDir()
       
    }

}
