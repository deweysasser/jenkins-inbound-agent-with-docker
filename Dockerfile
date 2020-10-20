FROM docker as docker

FROM jenkins/inbound-agent

USER root
COPY --from=docker /usr/local/bin/docker /usr/local/bin/docker
USER jenkins
