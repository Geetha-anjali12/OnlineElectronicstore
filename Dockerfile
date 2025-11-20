FROM tomcat:9.0

# Remove default ROOT
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Deploy your WAR as ROOT.war
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
