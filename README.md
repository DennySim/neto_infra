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
3. copy your own key.json(for yandex access) and id_rsa.pub
4. set variables like repo url and registry url in app_variables.tf
5. create workspace prod and stage
6. terraform init
7. terraform apply

# Annotation
Picture to point 7
![jenkins.PNG](images/jenkins.PNG)

# RESULT:
How to check pipeline work
- Make any commit to app repo
- Make any commit to app repo with tag

###### Commit without tag - just push image to registry
![pipeline_log.PNG](images/pipeline_log.PNG)
###### Commit with tag(first time) - push image to registry, docker container deployment in kubernetes
![pipeline_event.PNG](images/pipeline_log with_tag.PNG)
###### Commit with tag(second time) - push image to registry, docker container redeployment in kubernetes 
![pipeline_log.PNG](images/pipeline_log with_tag_redeployment.PNG)



