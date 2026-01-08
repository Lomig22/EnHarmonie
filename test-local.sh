#!/bin/bash

# Script de test local pour EnHarmonie
# Ce script lance un serveur web local et ouvre le site dans le navigateur

echo "🎹 EnHarmonie - Lancement du serveur local..."
echo ""

# Couleurs pour le terminal
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Vérifier si Python 3 est installé
if command -v python3 &> /dev/null
then
    echo -e "${GREEN}✓${NC} Python 3 détecté"
    PORT=8000
    echo ""
    echo -e "${BLUE}Serveur lancé sur:${NC} ${YELLOW}http://localhost:$PORT${NC}"
    echo ""
    echo "Appuyez sur Ctrl+C pour arrêter le serveur"
    echo ""
    
    # Ouvrir dans le navigateur (macOS)
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sleep 1
        open "http://localhost:$PORT"
    fi
    
    # Lancer le serveur
    python3 -m http.server $PORT
    
# Vérifier si Python 2 est installé
elif command -v python &> /dev/null
then
    echo -e "${GREEN}✓${NC} Python 2 détecté"
    PORT=8000
    echo ""
    echo -e "${BLUE}Serveur lancé sur:${NC} ${YELLOW}http://localhost:$PORT${NC}"
    echo ""
    echo "Appuyez sur Ctrl+C pour arrêter le serveur"
    echo ""
    
    # Ouvrir dans le navigateur (macOS)
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sleep 1
        open "http://localhost:$PORT"
    fi
    
    # Lancer le serveur
    python -m SimpleHTTPServer $PORT
    
# Vérifier si PHP est installé
elif command -v php &> /dev/null
then
    echo -e "${GREEN}✓${NC} PHP détecté"
    PORT=8000
    echo ""
    echo -e "${BLUE}Serveur lancé sur:${NC} ${YELLOW}http://localhost:$PORT${NC}"
    echo ""
    echo "Appuyez sur Ctrl+C pour arrêter le serveur"
    echo ""
    
    # Ouvrir dans le navigateur (macOS)
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sleep 1
        open "http://localhost:$PORT"
    fi
    
    # Lancer le serveur
    php -S localhost:$PORT
    
else
    echo -e "${YELLOW}⚠${NC} Aucun serveur détecté (Python ou PHP)"
    echo ""
    echo "Options:"
    echo "1. Installer Python: https://www.python.org/downloads/"
    echo "2. Utiliser npx: npx live-server"
    echo "3. Ouvrir index.html directement dans votre navigateur"
    echo ""
    
    # Essayer d'ouvrir le fichier directement
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Ouverture du fichier index.html..."
        open index.html
    fi
fi

