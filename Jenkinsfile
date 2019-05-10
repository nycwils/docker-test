node {
    def app

    stage("Clone repository") {
        checkout scm
    }

    stage("Build image") {

        withCredentials([file(credentialsId: '92045f3a-fdb3-491e-ad2e-d6b9fe7aa3e5', variable: 'mySecretKey')]){
            sh "ssh ec2-user@3.93.218.251 -i \$mySecretKey -o 'StrictHostKeyChecking=no' 'ls;'"
            sh "pwd"
            sh "ls"
            sh "scp -i $mySecretKey \$mySecretKey ec2-user@3.93.218.251:/home/ec2-user"
            sh "cd /home/ec2-user"
            sh "ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt"
        }

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

    stage("Test image") {

        echo "Hello"
        sh "echo hello2 from the shell2"
       
    }

  

}
