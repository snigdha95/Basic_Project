FROM tomcat:9.0
COPY target/dummy-web.war /usr/local/tomcat/webapps/
EXPOSE 8080
