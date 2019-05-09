node {
    def app

    stage("Clone repository") {
        checkout scm
    }

    ansiblePlaybook(
        playbook: './playbook-wilson-test-ansible.yaml',
        inventory: './inventory.txt', 
        //credentialsId: 'sample-ssh-key', 
        //extras: '-e parameter="some value"')
    )

    stage("Build image") {
        //this builds the docker image
        app = docker.build("nyuwilson/wilson:jenkinsdockerpush")
    }

    stage("Test image") {

        app.inside {
            echo "Test passed"
        }
    }

    stage("Push image") {

        docker.withRegistry("https://registry.hub.docker.com", "7bab3828-ca26-494d-ba90-908e3f3c1625") {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
            echo "trying to push docker build to dockerhub"
    }

}