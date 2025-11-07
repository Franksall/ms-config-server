# Microservicio: Servidor de Configuración (ms-config-server)

## 🎯 Propósito
Este servicio es el **punto central de configuración** para toda la arquitectura. Utiliza **Spring Cloud Config Server**.

Todos los demás microservicios se conectan a él al arrancar para obtener sus archivos de configuración (`.yml`). Esto nos permite gestionar todas las configuraciones (puertos, bases de datos, URLs) desde un solo lugar sin tener que reconstruir los otros servicios.

## 🛠️ Configuración Clave

* **Puerto de Servicio:** `8888`
* **Fuente de Configuración:** Repositorio de Git en GitHub.
    * **URL:** `https://github.com/Franksall/config-repo.git`
    * **Rama:** `main`

## 🐳 Docker
Este servicio es el **primero** en arrancar en el `docker-compose.yml`. Todos los demás servicios dependen de que esté en estado `healthy` (saludable) antes de poder iniciarse.