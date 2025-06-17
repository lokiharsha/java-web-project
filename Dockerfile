# Use official Tomcat base image
FROM tomcat:9.0-jdk8

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR file to Tomcat's webapps directory
COPY target/java-web-project.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]