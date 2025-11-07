
#  Java 17.
# 'alpine' porque es una versión muy ligera.
FROM eclipse-temurin:17-jdk-alpine

RUN apk add --no-cache curl

LABEL maintainer="jhoseph.duort@gmail.com"

#  CONFIGURACIÓN
#  Creamos una carpeta de trabajo dentro del contenedor
WORKDIR /app

# COPIAR EL CODIGO
# Busca el archivo .jar que se genera en la carpeta build/libs
#    y copia dentro del contenedor con el nombre "app.jar"
COPY build/libs/*.jar app.jar

#  EXPOSICIÓN
# Puerto 8888, que es donde corre tu config-server
EXPOSE 8888

# EJECUCIÓN
# El comando final para arrancar el servicio cuando el contenedor inicie.
ENTRYPOINT ["java", "-jar", "/app/app.jar"]