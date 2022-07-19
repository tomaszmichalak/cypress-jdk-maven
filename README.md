# Cypress with Node & JDK & Maven

A image based on [cypress/browsers:node16.5.0-chrome97-ff96](https://github.com/cypress-io/cypress-docker-images/tree/master/browsers/node16.5.0-chrome97-ff96) with all operating system dependencies for Cypress, Chrome 94 and Firefox 93 browsers. It contains also JDK 17 & Maven to run tests using [frontend-maven-plugin](https://github.com/eirslett/frontend-maven-plugin).

Dockerfile

```
 node version:    v16.5.0
 npm version:     7.19.1 
 yarn version:    1.22.15 
 debian version:  10.10 
 Chrome version:  Google Chrome 97.0.4692.71  
 Firefox version: Mozilla Firefox 96.0.3
 git version:     git version 2.20.1 
 jdk              Open JDK 17
 maven            3.8.6
```

Note: this image is required for running Cypress tests from Maven (in my case I start some additional database as a container and an application in background). This image is used in BitBucket Pipeline. 

## How to push to Docker Hub

```bash
docker buildx create --use

docker buildx build --platform linux/amd64,linux/arm64  --push -t tomaszmichalak/cypress-jdk-maven:node16.14.0-chrome99-ff97-jdk17-maven .
```