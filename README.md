# To configure docker authentication after logging into gcloud
gcloud auth configure-docker us-east1-docker.pkg.dev

# to clean and build new application jar file
./gradlew clean bootJar

# Build the image using Dockerfile
docker build -t hello-world .

# Tag local docker image to LOCATION-docker.pkg.dev/PROJECT-ID/REPOSITORY/IMAGE
docker tag hello-world us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1

# Push the image to artifact registry
docker push us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1

# Submits build using cloud build through gcloud cli
gcloud builds submit --region=us-central1 --tag us-central1-docker.pkg.dev/western-cirrus-401714/java-hellowolrd/hello-world:0.0.1
