FROM tomcat:10.1.26-jdk17

WORKDIR /app

# Copia código fonte
COPY src/ ./src
COPY WebContent/ ./WebContent

# Compila as classes Java
RUN mkdir -p WebContent/WEB-INF/classes && \
    javac -d WebContent/WEB-INF/classes $(find src -name "*.java")

# Copia tudo pro Tomcat
RUN cp -r WebContent/* /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
CMD ["catalina.sh", "run"]
