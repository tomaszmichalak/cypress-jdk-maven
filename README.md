# Cypress with Node & JDK & Maven

A image based on [cypress/browsers:node16.5.0-chrome97-ff96](https://github.com/cypress-io/cypress-docker-images/tree/master/browsers/node16.5.0-chrome97-ff96) with all operating system dependencies for Cypress, Chrome 94 and Firefox 93 browsers. It contains also JDK 17 & Maven to run tests using [frontend-maven-plugin](https://github.com/eirslett/frontend-maven-plugin).

## Content
```
 node version:    v16.14.0 
 npm version:     8.3.1 
 yarn version:    1.22.17 
 debian version:  11.2 
 Chrome version:  Google Chrome 99.0.4844.51  
 Firefox version: Mozilla Firefox 97.0.1 
 git version:     git version 2.30.2 
 JDK version:     openjdk 17.0.4 2022-07-19
 Maven version:   Apache Maven 3.8.6 (84538c9988a25aec085021c365c560670ad80f63)
 AWS CLI:         aws-cli/2.9.0 Python/3.9.11 Linux/5.15.49-linuxkit exe/x86_64.debian.11 prompt/off
```

Note: this image is required for running Cypress tests from Maven (e.g. when using additional database as a container and an application in background). This image is used in BitBucket Pipelines. 
To check the versions, please execute 

## Releasing

Use GitHub Actions to release a new image to https://gallery.ecr.aws/ds/cypress-jdk-maven.
The release action should trigger immediatelly after pushing a new tag with a `[0-9].[0-9].[0.9]` pattern.
