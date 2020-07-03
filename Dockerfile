FROM tomcat:8
# Take the war and copy to webapps of tomcat
#comment added now
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
