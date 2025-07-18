##Descargamos una versión concreta de UBUNTU, a través del tag
FROM ubuntu
LABEL Apasoft Formacion="darwinrv94@gmail.com"
##Actualizamos el sistema
RUN apt-get update
##Instalamos nginx
RUN apt-get install -y nginx
##Creamos un fichero index.html en el directorio por defecto de nginx
RUN echo '<h1>Mi primer Dockerfile</h1>' > /var/www/html/index.html
##Arrancamos NGINX a través de ENTRYPOINT para que no pueda ser ##modificar en la creación del contenedor
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
##Exponemos el Puerto 80
EXPOSE 80
