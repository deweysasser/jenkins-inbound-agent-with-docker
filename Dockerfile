FROM docker as docker

FROM jenkinsci/jnlp-slave

USER root
COPY --from=docker /usr/local/bin/docker /usr/local/bin/docker
USER jenkins
