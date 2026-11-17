FROM tomcat:10.1-jdk21-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY BloodSync.war /usr/local/tomcat/webapps/ROOT.war

# Configure ROOT application welcome page
RUN mkdir -p /usr/local/tomcat/webapps/ROOT

EXPOSE 8080

CMD ["catalina.sh", "run"]
