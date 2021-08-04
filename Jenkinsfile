pipeline {

  agent any

   stages {
   
    stage('Sanity checks') {
			 steps {
				build job: 'Sanity Check', parameters: [string(name: 'Build_Version', value: "${params.Build_Version}")]
		 	}
         }
   
   stage('Load Workspace') {
			 steps {

	 build job: 'Load_Build_Workspace', parameters: [string(name: 'Build_Version', value: "${params.Build_Version}")]
			}
         }

        stage('Deploy') {
            parallel {
                stage('Deploy to Nexus') {
                    steps {
                        build 'Deploy'
                    }
                }
		
                stage('Deploy To Tomcat') {
                    steps {
                        build 'DeloytoTomcat'
                    }
                }
            }
        }


   }
}