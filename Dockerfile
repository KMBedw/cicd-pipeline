# Utiliser l'image officielle node version 16 comme image de base
FROM node:16

# Créer le répertoire de l'application
WORKDIR /usr/src/app

# Installer les dépendances de l'application
# Un joker est utilisé pour s'assurer que les fichiers package.json ET package-lock.json sont copiés
# là où c'est disponible (npm@5+)
COPY package*.json ./

# Exécuter npm install
# Si vous construisez votre code pour la production
# RUN npm ci --only=production
RUN npm install

# Regrouper le code source de l'application
COPY . .

# Exposer le port 8080
EXPOSE 8080

# Définir la commande par défaut pour exécuter l'application
# Utiliser "node server.js" pour démarrer l'application
CMD [ "node", "server.js" ]