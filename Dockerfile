# Etapa única: rodar o WAR no Tomcat
FROM tomcat:10.1.26-jdk17

# Copia o arquivo WAR exportado pelo Eclipse
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]

