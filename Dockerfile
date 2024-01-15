# Utiliser une image de base légère
FROM python:3.8-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les dépendances du projet
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code source
COPY . .

# Exposer le port 5000
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]
