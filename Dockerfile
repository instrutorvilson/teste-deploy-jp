# Etapa 1: Compila o projeto 
FROM maven:3.9.6-eclipse-temurin-17 AS build 
WORKDIR /app 
COPY . . 
RUN mvn clean package -DskipTests 
 
# Etapa 2: Executa com Tomcat 
FROM tomcat:10.1.26-jdk17 
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war 
 
EXPOSE 8080 
CMD ["catalina.sh", "run"] 
