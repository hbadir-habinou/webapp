FROM ubuntu:22.04
LABEL maintainer="training"

# Mise à jour et installation des paquets nécessaires
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Nettoyage du répertoire web par défaut
RUN rm -Rf /var/www/html/*

# Clonage du dépôt dans un répertoire temporaire
RUN git clone https://github.com/hbadir-habinou/site_simple.git /tmp/site_simple

# Copie de TOUT le contenu du site vers le répertoire servi par Nginx
RUN cp -r /tmp/site_simple/* /var/www/html/

# Nettoyage du clone temporaire
RUN rm -Rf /tmp/site_simple

# Exposition du port HTTP
EXPOSE 80

# Démarrage de Nginx en mode foreground
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]