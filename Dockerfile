FROM anapsix/alpine-java
LABEL maintainer="shanem@liatrio.com"

# Usa el nuevo .jar generado automáticamente
COPY target/*.jar /home/spring-petclinic.jar

CMD ["java", "-jar", "/home/spring-petclinic.jar"]
