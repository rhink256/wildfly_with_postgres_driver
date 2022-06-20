FROM quay.io/wildfly/wildfly:26.1.1.Final 
ADD postgresql-42.2.19.jar /opt/jboss/wildfly/standalone/deployments/
