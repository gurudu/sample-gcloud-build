gcloud auth configure-docker us-east1-docker.pkg.dev

./gradlew bootJar

docker build -t hello-world .

docker tag hello-world us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1

docker push us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1


// cloud build using cmd

gcloud builds submit --region=us-central1 --tag us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1


using cloudbuild file:
gcloud builds submit --config cloudbuild.yaml"# sample-gcloud-build" 
