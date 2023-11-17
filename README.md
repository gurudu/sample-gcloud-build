# Objective
 To Implement CI/CD pipeline using Google Cloud Build i.e to build and push docker image to artifact registry and deploy to CloudRun

## Some useful commands: 
### To configure docker authentication after logging into gcloud
gcloud auth configure-docker us-east1-docker.pkg.dev

### To clean and build new application jar file
./gradlew clean bootJar

### Build the image using Dockerfile
docker build -t hello-world .

### Tag local docker image to LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY/IMAGE
docker tag hello-world us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1

### Push the image to artifact registry
docker push us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1

### Submits build using cloud build through gcloud cli
gcloud builds submit --region=us-central1 --tag us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1

## Snippets from Gcloud Console: 

### Artifact registry in Gcloud console
![Artifact registry_gcloud_console](https://github.com/gurudu/sample-gcloud-build/assets/24590030/ea83ff0a-318f-4a77-b6f4-5b4b44f93251)

### CI/CD pipeline using Cloud Build and Github as version control
 #### Cloud Build View from Gcloud Console
 ![Cloud_build1_gcloud_console](https://github.com/gurudu/sample-gcloud-build/assets/24590030/65e551c9-0676-4a95-a7e8-17249f54955e)

 #### Execution of Build steps  in CloudBuild yml file
 ![cloud_build_gcloud_console](https://github.com/gurudu/sample-gcloud-build/assets/24590030/14de57b0-be07-4e2e-aee9-932cfd665564)

 #### Grant below permissions to deploy to Cloud Run using Cloud Build
 ![Cloud_Build3_gcloud_console](https://github.com/gurudu/sample-gcloud-build/assets/24590030/715dd2ee-ad27-4314-bf8f-466ca708701d)


### CloudRun view in gcloud console
 ![Cloud_Run_gcloud_console](https://github.com/gurudu/sample-gcloud-build/assets/24590030/d44da3ca-bdd3-4588-8c0f-d4366afbcfe9) 
