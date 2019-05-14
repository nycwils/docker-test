node {
    def app

    stage("Clone repository") {
        checkout scm
    }

    stage("Build Docker") {

        withCredentials([file(credentialsId: '92045f3a-fdb3-491e-ad2e-d6b9fe7aa3e5', variable: 'mySecretKey')]){
            
            //this should build the docker image  
            //sh "scp -i $mySecretKey \$mySecretKey ec2-user@3.93.218.251:/home/ec2-user"
            
            sh "ssh ec2-user@3.93.218.251 -i \$mySecretKey -o 'StrictHostKeyChecking=no' 'sudo docker build nyuwilson/wilson:jenkinsdockerpush'"

            //sh "ssh ec2-user@3.93.218.251 -i \$mySecretKey -o 'StrictHostKeyChecking=no' 'ls; pwd; pwd; cd /var/www/html;sudo git pull; pwd; ls; ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt; 'StrictHostKeyChecking=no';'"

            //create new stage with credential execute shell command in jenkins master shell into targets with PEM file.  
            
            //sh "ssh ec2-user@3.93.218.251 -i \$mySecretKey -o 'StrictHostKeyChecking=no' 'ls; pwd; pwd; cd /var/www/html; git clone https://github.com/nycwils/aws-training.git .; sudo ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt;'"
            //sh "pwd"
            //sh "ls"
            //sh "cd /home/ec2-user"
            //sh "scp -i $mySecretKey \$mySecretKey ec2-user@3.93.218.251:/home/ec2-user"
            //sh "cd /home/ec2-user"
            //sh "ls"
            //sh "ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt"
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

    stage("Run Ancible Playbook") {

        //echo "Hello"
        //sh "echo hello2 from the shell2"
        //sh "'ls; pwd; pwd; ls; ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt; 'StrictHostKeyChecking=no';'"
         withCredentials([file(credentialsId: '92045f3a-fdb3-491e-ad2e-d6b9fe7aa3e5', variable: 'mySecretKey')]){
            sh "ssh ec2-user@3.93.218.251 -i \$mySecretKey -o 'StrictHostKeyChecking=no' 'ls; pwd; pwd; cd /var/www/html; pwd; ls; ansible-playbook playbook-wilson-test-ansible.yaml -i inventory.txt; 'StrictHostKeyChecking=no';'"

        }
       
    }

  

}
