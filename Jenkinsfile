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
    }

    stage("Test image") {

        app.inside {
            echo "Test passed"
        }
    }

    stage("Push image") {

        echo "hello2"
        sh "echo hello2 from the shell2"
    }



}





//    stage("Push image") {

//         docker.withRegistry("https://registry.hub.docker.com", "7bab3828-ca26-494d-ba90-908e3f3c1625") {
//             //app.push("${env.BUILD_NUMBER}")
//             //app.push("latest")
//             sh "echo hello from shell 2"
//         }
//             echo "is this working?"
//     }
