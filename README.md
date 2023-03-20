# Cypress with Node & JDK & Maven

A image based on [cypress/browsers](https://hub.docker.com/r/cypress/browsers/tags) with all operating system dependencies for Cypress, Chrome, Firefox and Edge browsers. It contains also JDK 17 & Maven to run tests using [frontend-maven-plugin](https://github.com/eirslett/frontend-maven-plugin). It is designed to run in CI (BitBucket Pipelines) as the base image for steps that require all of the installed technologies.

Note: this image is required for running Cypress tests from Maven (e.g. when using additional database as a container and an application in background). 

## Releasing

Use GitHub Actions to release a new image to https://gallery.ecr.aws/ds/cypress-jdk-maven.
The release action should trigger immediatelly after pushing a new tag with a `[0-9].[0-9].[0.9]` pattern.
