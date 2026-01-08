# 🎹 EnHarmonie - Guide d'installation

## 📋 Prérequis

- Un navigateur web moderne (Chrome, Firefox, Safari, Edge)
- Un éditeur de code (VS Code recommandé)
- (Optionnel) Un serveur web local pour le développement

## 📁 Structure du projet

```
EnHarmonie-main/
│
├── index.html              # Page principale
├── css/
│   └── styles.css         # Styles CSS
├── js/
│   └── main.js            # JavaScript
├── images/
│   ├── piano-keys.jpg     # Image hero (à ajouter)
│   ├── piano-sheet.jpg    # Image section à propos (à ajouter)
│   └── README.md          # Guide pour les images
├── README.md              # Documentation du projet
└── INSTALLATION.md        # Ce fichier
```

## 🚀 Installation

### Étape 1 : Ajouter les images

1. Placez vos deux images de piano dans le dossier `/images/`
2. Renommez-les :
   - `piano-keys.jpg` (touches de piano pour le hero)
   - `piano-sheet.jpg` (piano avec partition pour la section à propos)

### Étape 2 : Lancer le site

#### Option A : Ouverture directe
Ouvrez simplement le fichier `index.html` dans votre navigateur.

#### Option B : Serveur local (recommandé)

**Avec Python :**
```bash
# Python 3
python3 -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

**Avec Node.js (live-server) :**
```bash
npx live-server
```

**Avec PHP :**
```bash
php -S localhost:8000
```

**Avec VS Code (extension Live Server) :**
1. Installez l'extension "Live Server"
2. Clic droit sur `index.html` → "Open with Live Server"

## ⚙️ Configuration

### Personnalisation des couleurs

Modifiez les variables CSS dans `/css/styles.css` (lignes 6-17) :

```css
:root {
    --color-dark: #0a0a0a;
    --color-gold: #d4af37;
    /* ... autres variables */
}
```

### Informations de contact

Modifiez dans `index.html` (section Contact, ligne ~400) :

```html
<a href="mailto:votre@email.fr">votre@email.fr</a>
<a href="tel:+33612345678">06 12 34 56 78</a>
```

### Configuration du formulaire

Pour que le formulaire de contact fonctionne, vous devez intégrer un service d'envoi d'emails.

#### Option 1 : EmailJS (Gratuit)

1. Créez un compte sur [EmailJS](https://www.emailjs.com/)
2. Configurez votre service d'email
3. Dans `js/main.js`, décommentez et configurez :

```javascript
emailjs.init("VOTRE_USER_ID");

// Dans la fonction de soumission du formulaire
emailjs.send("service_id", "template_id", formData)
    .then(() => {
        alert('Message envoyé avec succès !');
    });
```

#### Option 2 : Formspree (Gratuit)

1. Créez un compte sur [Formspree](https://formspree.io/)
2. Modifiez la balise `<form>` dans `index.html` :

```html
<form action="https://formspree.io/f/VOTRE_ID" method="POST">
```

#### Option 3 : Backend personnalisé

Créez votre propre endpoint API et modifiez `js/main.js`.

## 🎨 Personnalisation

### Changer les polices

Les polices actuelles (Google Fonts) :
- **Cormorant Garamond** : titres élégants
- **Inter** : corps de texte moderne

Pour changer, modifiez dans `index.html` (ligne 12) et `css/styles.css` (lignes 18-19).

### Modifier les tarifs

Éditez dans `index.html` la section Tarifs (lignes ~200-280).

### Ajouter/Modifier les témoignages

Éditez dans `index.html` la section Avis (lignes ~300-350).

### Modifier les questions FAQ

Éditez dans `index.html` la section FAQ (lignes ~360-420).

## 📱 Test de la responsivité

Testez votre site sur différentes tailles d'écran :

1. **Chrome DevTools** : F12 → icône mobile
2. **Tailles à tester** :
   - Mobile : 375px, 414px
   - Tablette : 768px, 1024px
   - Desktop : 1280px, 1920px

## ✅ Checklist avant mise en ligne

- [ ] Images ajoutées et optimisées
- [ ] Informations de contact mises à jour
- [ ] Formulaire de contact configuré
- [ ] Tarifs vérifiés
- [ ] Test sur mobile, tablette et desktop
- [ ] Vérification des liens
- [ ] Test du menu mobile
- [ ] Test du carousel
- [ ] Test de la FAQ
- [ ] Validation HTML/CSS (W3C Validator)

## 🚢 Mise en ligne

### Option 1 : GitHub Pages (Gratuit)

1. Créez un dépôt GitHub
2. Pushez votre code
3. Settings → Pages → Source: main branch
4. Votre site sera accessible à `username.github.io/nom-du-repo`

### Option 2 : Netlify (Gratuit)

1. Créez un compte sur [Netlify](https://www.netlify.com/)
2. Glissez-déposez votre dossier
3. Site en ligne instantanément !

### Option 3 : Vercel (Gratuit)

1. Créez un compte sur [Vercel](https://vercel.com/)
2. Importez votre projet
3. Déploiement automatique

### Option 4 : Hébergement traditionnel

1. Compressez votre dossier en ZIP
2. Uploadez via FTP sur votre hébergeur
3. Décompressez dans le dossier public_html

## 🔧 Maintenance

### Mise à jour des contenus

- **Textes** : éditez directement `index.html`
- **Styles** : modifiez `css/styles.css`
- **Fonctionnalités** : ajustez `js/main.js`

### Sauvegarde

Pensez à sauvegarder régulièrement :
- Sur GitHub/GitLab
- Sur un service cloud (Dropbox, Google Drive)
- En local avec versioning Git

## 🐛 Résolution de problèmes

### Les images ne s'affichent pas
- Vérifiez que les fichiers existent dans `/images/`
- Vérifiez les noms (sensible à la casse)
- Vérifiez les chemins relatifs

### Le menu mobile ne fonctionne pas
- Vérifiez que `main.js` est bien chargé
- Ouvrez la console (F12) pour voir les erreurs

### Le formulaire ne s'envoie pas
- Configurez un service d'envoi d'emails (voir Configuration)
- Vérifiez la console pour les erreurs

### Le carousel ne défile pas
- Vérifiez que tous les éléments HTML existent
- Vérifiez la console JavaScript

## 📞 Support

Pour toute question ou problème :
- Consultez la documentation dans les commentaires du code
- Vérifiez la console du navigateur (F12)
- Recherchez l'erreur sur Google/StackOverflow

## 📄 Licence

Ce projet est créé pour EnHarmonie. Tous droits réservés.

---

**Développé avec passion pour la musique et l'élégance** 🎹✨

