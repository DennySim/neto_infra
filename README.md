# About
CI-CD infrastructure for build and deploy App onto Kubernetes

# Prerequisites

### Yandex
- Access to yandex-cloud

### Terraformcloud
- Access to TERRAFORMCLOUD
- two workspaces prod and stag

### Required packages on local host
- python3
- ansible
- yc cli
- kubectl
- terraform

# Installation


1. Clone https://github.com/DennySim/neto_infra.git
2. cd ./neto_infra/terraform 
3. copy key.json(for yandex access) and id_rsa.pub
4. set variables like repo url and registry url in app_variables.tf
5. create workspace prod and stage
6. terraform init
7. terraform apply
8. Being in your repository on github.com in the Setting/Webhooks section, add WEBHOOK
http://jenkins-url/github-webhook/
![webhook.PNG](images/webhook.PNG)

# Annotation
Picture to points from 1 to 7.
![jenkins.PNG](images/jenkins.PNG)

# RESULT:
How pipeline works
- Make any commit to app repo

![pipeline_event.PNG](images/pipeline_event.PNG)
![pipeline_log.PNG](images/pipeline_log.PNG)



