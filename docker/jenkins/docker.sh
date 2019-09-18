JENKINS_USER=admin
JENKINS_PASS=admin

docker build -t sekar/jenkins:0.0.1 --build-arg JENKINS_USER=${JENKINS_USER} --build-arg JENKINS_PASS=${JENKINS_PASS} --no-cache .

docker push sekar/jenkins:0.0.1
