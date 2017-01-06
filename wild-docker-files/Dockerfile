FROM jboss/wildfly

# Environment variable with default value
ARG APP_FILE=appfile.war

RUN echo ${APP_FILE}

# Add your application to the deployment folder
ADD ${APP_FILE} /opt/jboss/wildfly/standalone/deployments/${APP_FILE}

# Add standalone-ha.xml - set your own network settings
ADD standalone-ha.xml /opt/jboss/wildfly/standalone/configuration/standalone-ha.xml

# Add user for adminstration purpose
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin123 --silent
