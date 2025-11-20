# Use official Tomcat image
FROM tomcat:9.0
# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT
# Copy your WAR into Tomcat webapps
COPY ./OnlineElectronicStore1.war /usr/local/tomcat/webapps/OnlineElectronicStore1.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
