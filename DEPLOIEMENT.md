# 🚀 Guide de Déploiement - EnHarmonie

Ce guide vous accompagne dans la mise en ligne de votre site EnHarmonie.

## 📋 Préparation avant déploiement

### 1. Vérifications finales

```bash
# Vérifier la structure du projet
ls -la

# Devrait afficher :
# - index.html
# - css/styles.css
# - js/main.js
# - images/ (avec vos images)
# - README.md
```

### 2. Remplacer les placeholders

**Images à remplacer :**
- `images/piano-keys-placeholder.svg` → `images/piano-keys.jpg`
- `images/piano-sheet-placeholder.svg` → `images/piano-sheet.jpg`

**Après remplacement, mettre à jour :**

Dans `index.html` (ligne ~21) :
```html
<header id="hero" class="hero" style="background-image: url('images/piano-keys.jpg');">
```

Dans `index.html` (ligne ~115) :
```html
<img src="images/piano-sheet.jpg" alt="Piano avec partition musicale dans une ambiance douce" loading="lazy">
```

Dans `css/styles.css` (ligne ~150) :
```css
background: url('../images/piano-keys.jpg') center/cover no-repeat;
```

### 3. Optimiser les images

**Outils recommandés :**
- [TinyPNG](https://tinypng.com/) - Compression en ligne
- [ImageOptim](https://imageoptim.com/) - App macOS
- [Squoosh](https://squoosh.app/) - App Google

**Objectifs :**
- Hero image : < 500 KB
- Section image : < 300 KB
- Format : JPEG qualité 85%

### 4. Configurer le formulaire de contact

#### Option A : EmailJS (Recommandé - Gratuit)

1. **Inscription**
   - Allez sur [emailjs.com](https://www.emailjs.com/)
   - Créez un compte gratuit

2. **Configuration**
   - Créez un service email (Gmail, Outlook, etc.)
   - Créez un template d'email
   - Notez votre User ID, Service ID, Template ID

3. **Intégration**

Dans `index.html`, avant `</body>` :
```html
<script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
<script>
    emailjs.init("VOTRE_USER_ID");
</script>
```

Dans `js/main.js`, remplacez la section formulaire (ligne ~210) :
```javascript
contactForm.addEventListener('submit', (e) => {
    e.preventDefault();
    
    const formData = {
        name: document.getElementById('name').value,
        email: document.getElementById('email').value,
        phone: document.getElementById('phone').value,
        type: document.getElementById('type').value,
        message: document.getElementById('message').value
    };
    
    // Désactiver le bouton pendant l'envoi
    const submitBtn = contactForm.querySelector('.submit-btn');
    submitBtn.disabled = true;
    submitBtn.textContent = 'Envoi en cours...';
    
    emailjs.send("VOTRE_SERVICE_ID", "VOTRE_TEMPLATE_ID", formData)
        .then(() => {
            alert('Message envoyé avec succès ! Je vous répondrai dans les plus brefs délais.');
            contactForm.reset();
        })
        .catch((error) => {
            alert('Erreur lors de l\'envoi. Veuillez réessayer ou me contacter directement.');
            console.error('Erreur:', error);
        })
        .finally(() => {
            submitBtn.disabled = false;
            submitBtn.textContent = 'Envoyer le message';
        });
});
```

#### Option B : Formspree (Simple)

Dans `index.html`, modifiez la balise `<form>` (ligne ~420) :
```html
<form class="contact-form" action="https://formspree.io/f/VOTRE_ID" method="POST">
    <!-- Les champs restent identiques -->
    <!-- Ajoutez name="" à chaque input -->
</form>
```

Créez un compte sur [formspree.io](https://formspree.io/) pour obtenir votre ID.

#### Option C : Backend personnalisé

Si vous avez un backend :
```javascript
// Dans js/main.js
fetch('/api/contact', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(formData)
})
.then(response => response.json())
.then(data => {
    if (data.success) {
        alert('Message envoyé !');
    }
});
```

### 5. Mettre à jour les coordonnées

Dans `index.html` (section Contact, ligne ~435) :
```html
<!-- Email -->
<a href="mailto:contact@enharmonie.fr">contact@enharmonie.fr</a>

<!-- Téléphone -->
<a href="tel:+33612345678">06 12 34 56 78</a>

<!-- Localisation -->
<p>Tours, France</p>
```

Dans `footer` (ligne ~520) :
```html
<p><a href="mailto:contact@enharmonie.fr">contact@enharmonie.fr</a></p>
<p><a href="tel:+33612345678">06 12 34 56 78</a></p>
```

### 6. Ajouter un Favicon

Créez un favicon avec [Favicon Generator](https://realfavicongenerator.net/)

Dans `index.html`, ajoutez dans `<head>` :
```html
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
```

### 7. Ajouter les Meta Tags Open Graph

Dans `index.html`, dans `<head>` :
```html
<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://enharmonie.fr/">
<meta property="og:title" content="EnHarmonie - Cours de Piano Élégants">
<meta property="og:description" content="Cours de piano personnalisés à Tours. Transmission, écoute et élégance musicale.">
<meta property="og:image" content="https://enharmonie.fr/images/og-image.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://enharmonie.fr/">
<meta property="twitter:title" content="EnHarmonie - Cours de Piano Élégants">
<meta property="twitter:description" content="Cours de piano personnalisés à Tours. Transmission, écoute et élégance musicale.">
<meta property="twitter:image" content="https://enharmonie.fr/images/og-image.jpg">
```

Créez une image `og-image.jpg` (1200x630px) pour les partages sociaux.

## 🌐 Options de déploiement

### Option 1 : Netlify (Recommandé ✨)

**Avantages :**
- Gratuit
- HTTPS automatique
- Déploiement continu
- CDN global
- Formulaires intégrés (alternative à EmailJS)

**Méthode A : Drag & Drop**

1. Allez sur [netlify.com](https://www.netlify.com/)
2. Créez un compte
3. Glissez-déposez votre dossier complet
4. Site en ligne en 30 secondes !

**Méthode B : GitHub + Netlify**

```bash
# 1. Initialiser Git
git init
git add .
git commit -m "Initial commit - EnHarmonie"

# 2. Créer un repo sur GitHub
# Suivez les instructions sur github.com

# 3. Push vers GitHub
git remote add origin https://github.com/votre-username/enharmonie.git
git push -u origin main

# 4. Sur Netlify
# - New site from Git
# - Connect to GitHub
# - Select your repo
# - Deploy!
```

**Configuration personnalisée (optionnelle) :**

Créez `netlify.toml` à la racine :
```toml
[build]
  publish = "."
  
[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200

[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "DENY"
    X-XSS-Protection = "1; mode=block"
    X-Content-Type-Options = "nosniff"
```

**Nom de domaine personnalisé :**
1. Dans Netlify : Domain Settings
2. Add custom domain
3. Suivez les instructions DNS

### Option 2 : GitHub Pages

**Avantages :**
- Gratuit
- HTTPS automatique
- Intégration GitHub

**Déploiement :**

```bash
# 1. Créer le repo
git init
git add .
git commit -m "Initial commit"

# 2. Push vers GitHub
git remote add origin https://github.com/votre-username/enharmonie.git
git push -u origin main

# 3. Activer GitHub Pages
# Settings → Pages → Source: main branch → Save
```

Votre site sera disponible à : `https://votre-username.github.io/enharmonie/`

**Domaine personnalisé :**
1. Ajoutez un fichier `CNAME` avec votre domaine :
```
enharmonie.fr
```

2. Configurez vos DNS :
```
Type: A
Host: @
Value: 185.199.108.153
       185.199.109.153
       185.199.110.153
       185.199.111.153

Type: CNAME
Host: www
Value: votre-username.github.io
```

### Option 3 : Vercel

```bash
# Installation
npm install -g vercel

# Déploiement
cd /path/to/enharmonie
vercel

# Suivez les instructions
```

### Option 4 : Hébergement traditionnel (OVH, O2Switch, etc.)

**Via FTP :**

1. **Compresser le projet**
```bash
zip -r enharmonie.zip * -x "*.git*" -x "*.DS_Store" -x "test-local.sh"
```

2. **Uploader via FTP**
   - Utilisez FileZilla ou Cyberduck
   - Connectez-vous à votre hébergement
   - Uploadez dans `public_html` ou `www`
   - Décompressez sur le serveur

3. **Configuration**
   - Vérifiez que `index.html` est à la racine
   - Testez l'accès à votre domaine

**Fichier .htaccess (optionnel) :**

Créez `.htaccess` à la racine :
```apache
# Force HTTPS
RewriteEngine On
RewriteCond %{HTTPS} off
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]

# Compression
<IfModule mod_deflate.c>
    AddOutputFilterByType DEFLATE text/html text/plain text/xml text/css text/javascript application/javascript
</IfModule>

# Cache
<IfModule mod_expires.c>
    ExpiresActive On
    ExpiresByType image/jpg "access plus 1 year"
    ExpiresByType image/jpeg "access plus 1 year"
    ExpiresByType image/png "access plus 1 year"
    ExpiresByType image/svg+xml "access plus 1 year"
    ExpiresByType text/css "access plus 1 month"
    ExpiresByType application/javascript "access plus 1 month"
</IfModule>
```

## 📊 Après déploiement

### 1. Tester le site en ligne

- [ ] Accès à l'URL
- [ ] HTTPS activé (🔒)
- [ ] Toutes les images chargent
- [ ] Navigation fonctionne
- [ ] Formulaire envoie bien les emails
- [ ] Test sur mobile réel
- [ ] Test sur plusieurs navigateurs

### 2. Configurer Google Analytics (optionnel)

1. Créez un compte [Google Analytics](https://analytics.google.com/)
2. Obtenez votre Measurement ID (G-XXXXXXXXXX)

Dans `index.html`, avant `</head>` :
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

**Alternative : Plausible Analytics** (respectueux de la vie privée)
```html
<script defer data-domain="enharmonie.fr" src="https://plausible.io/js/script.js"></script>
```

### 3. Google Search Console

1. Allez sur [Search Console](https://search.google.com/search-console)
2. Ajoutez votre propriété (domaine)
3. Vérifiez la propriété
4. Soumettez votre sitemap (optionnel)

**Créer un sitemap.xml simple :**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://enharmonie.fr/</loc>
    <lastmod>2026-01-07</lastmod>
    <priority>1.0</priority>
  </url>
</urlset>
```

### 4. Performance & SEO

**Tests à effectuer :**
- [PageSpeed Insights](https://pagespeed.web.dev/)
- [GTmetrix](https://gtmetrix.com/)
- [WebPageTest](https://www.webpagetest.org/)

**Objectifs :**
- Score Lighthouse > 90
- Temps de chargement < 3s
- First Contentful Paint < 1.8s

## 🔧 Maintenance

### Mises à jour du contenu

**Modifier les tarifs :**
1. Éditez `index.html` section `#tarifs`
2. Sauvegardez
3. Redéployez (automatique sur Netlify/Vercel)

**Ajouter un témoignage :**
1. Dans `index.html`, section `#avis`
2. Dupliquez un `<div class="avis-card">`
3. Modifiez le contenu
4. Redéployez

**Modifier la FAQ :**
1. Dans `index.html`, section `#faq`
2. Dupliquez un `<div class="faq-item">`
3. Modifiez question et réponse
4. Redéployez

### Sauvegarde

```bash
# Commit régulier
git add .
git commit -m "Update: [description]"
git push origin main

# Backup local
zip -r backup-$(date +%Y%m%d).zip * -x "*.git*"
```

### Monitoring

**Uptime monitoring (gratuit) :**
- [UptimeRobot](https://uptimerobot.com/)
- [StatusCake](https://www.statuscake.com/)

Configure des alertes email si le site est down.

## 🆘 Dépannage

### Le site ne charge pas
- Vérifiez que le déploiement est terminé
- Videz le cache du navigateur (Cmd+Shift+R)
- Vérifiez la console (F12) pour les erreurs

### Les images ne s'affichent pas
- Vérifiez les chemins (relatifs vs absolus)
- Vérifiez que les fichiers sont bien uploadés
- Vérifiez la casse (piano-keys.jpg vs Piano-Keys.jpg)

### Le formulaire ne fonctionne pas
- Vérifiez la configuration EmailJS/Formspree
- Vérifiez la console pour les erreurs JavaScript
- Testez avec un email de test

### CSS/JS ne se met pas à jour
- Videz le cache du navigateur
- Ajoutez un query string : `styles.css?v=2`
- Vérifiez que les fichiers sont bien uploadés

## 📞 Support

Pour toute question :
1. Consultez la documentation (README.md, INSTALLATION.md)
2. Vérifiez les logs de déploiement
3. Consultez la documentation de votre plateforme d'hébergement

---

**Félicitations pour votre mise en ligne ! 🎹🚀**

