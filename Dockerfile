FROM jboss/wildfly:25.0.0.Final
ADD postgresql-42.2.19.jar /opt/jboss/wildfly/standalone/deployments/
