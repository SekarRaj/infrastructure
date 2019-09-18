FROM jenkins/jenkins:lts

ARG JENKINS_USER
ARG JENKINS_PASS

ENV JENKINS_USER=${JENKINS_USER}
ENV JENKINS_PASS=${JENKINS_PASS}

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# install jenkins plugins
COPY ./data/jenkins-plugins /usr/share/jenkins/plugins
RUN while read i ; \
      do /usr/local/bin/install-plugins.sh $i ; \
    done < /usr/share/jenkins/plugins

COPY scripts/*.groovy /usr/share/jenkins/ref/init.groovy.d/

USER root

RUN chown -R jenkins:jenkins $JENKINS_HOME
