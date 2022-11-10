#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://alocacao-backend-webappdeploymentbucket-rz6xylar3dda/alocacao-recursos-0.0.1-SNAPSHOT.war /usr/local/tomcat9/webapps/alocacao-recursos-0.0.1-SNAPSHOT.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps