docker pull jenkins/jenkins:lts
docker run -p 8080:8080 --name=jenkins-master -d --env JAVA_OPTS="-Xmx8192m" jenkins/jenkins
docker exec $(docker container ls | grep "jenkins/jenkins" | awk {'print $1'}) cat /var/jenkins_home/secrets/initialAdminPassword
