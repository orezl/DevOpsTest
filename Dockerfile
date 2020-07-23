FROM tomcat:8
# Take the war and copy to webapps of tomcat
#comment added  12325
COPY load/*.war /usr/local/tomcat/webapps/myweb.war
