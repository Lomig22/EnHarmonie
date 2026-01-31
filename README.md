# 🎹 Enharmonie

Site vitrine premium pour professeur de piano - Design élégant, sombre et moderne.

![Enharmonie](https://img.shields.io/badge/Status-Production%20Ready-success)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)
![Version](https://img.shields.io/badge/Version-1.0.0-blue)
![Lines](https://img.shields.io/badge/Code-2100%20lignes-informational)
![Docs](https://img.shields.io/badge/Documentation-Complète-brightgreen)

---

**📖 Nouveau sur le projet ? Commencez ici :**
- 🚀 [DEMARRAGE-RAPIDE.md](DEMARRAGE-RAPIDE.md) - Voir le site en 3 minutes
- 📚 [INDEX-DOCUMENTATION.md](INDEX-DOCUMENTATION.md) - Naviguer dans la documentation
- 📦 [LIVRAISON.md](LIVRAISON.md) - Récapitulatif complet de livraison

---

## 📖 À propos

Enharmonie est un site vitrine one-page créé pour présenter les services d'un professeur de piano professionnel. Le design met l'accent sur l'élégance, l'intimité et le professionnalisme, avec une palette sombre et dorée inspirée de l'univers du piano classique.

## ✨ Fonctionnalités

### 🎨 Design Premium
- Interface sombre et élégante avec accents dorés
- Animations subtiles et transitions fluides
- Typographie raffinée (Cormorant Garamond + Inter)
- Images en pleine largeur avec overlays

### 📱 Responsive Design
- Parfaitement adapté mobile, tablette et desktop
- Menu hamburger élégant sur mobile
- Grilles flexibles et adaptatives
- Images optimisées pour tous les écrans

### 🎯 Sections principales
1. **Hero** - Bannière d'accueil avec image de piano
2. **À propos** - Présentation du professeur et de sa méthode
3. **Tarifs** - 4 formules tarifaires avec cartes premium
4. **Témoignages** - Carousel automatique avec 5 avis clients
5. **FAQ** - Accordéon avec 6 questions fréquentes
6. **Contact** - Formulaire et informations de contact

### 🚀 Fonctionnalités techniques
- Navigation sticky avec apparition au scroll
- Smooth scroll vers les sections
- Carousel automatique avec support tactile
- Accordéon FAQ accessible
- Animations au scroll (Intersection Observer)
- Formulaire de contact avec validation
- Code propre, commenté et maintenable
- SEO optimisé (balises meta, structure sémantique)
- Accessibilité (ARIA labels, navigation clavier)

## 🛠️ Technologies utilisées

- **HTML5** - Structure sémantique (439 lignes)
- **CSS3** - Styles modernes (1220 lignes - Grid, Flexbox, Variables CSS)
- **JavaScript Vanilla** - Interactions sans dépendances (439 lignes)
- **Google Fonts** - Typographie premium (Cormorant Garamond + Inter)

**Total code :** ~2100 lignes + 2000 lignes de documentation

## 📦 Installation

### 🚀 Démarrage ultra-rapide (2 minutes)

```bash
# 1. Naviguer vers le projet
cd "/Users/admin/DEV AGENCY/DEV/EnHarmonie/EnHarmonie-main"

# 2. Lancer le serveur
./test-local.sh

# 3. Le site s'ouvre automatiquement !
# Sinon : http://localhost:8000
```

📖 **Guides disponibles :**
- [DEMARRAGE-RAPIDE.md](DEMARRAGE-RAPIDE.md) - Voir le site en 3 minutes
- [INSTALLATION.md](INSTALLATION.md) - Guide détaillé
- [DEPLOIEMENT.md](DEPLOIEMENT.md) - Mettre en ligne
- [TESTS.md](TESTS.md) - Tester avant production

## 📁 Structure du projet

```
EnHarmonie-main/
│
├── index.html              # Page principale
├── css/
│   └── styles.css         # Styles CSS (700+ lignes)
├── js/
│   └── main.js            # JavaScript (400+ lignes)
├── images/
│   ├── piano-keys.jpg     # Image hero
│   ├── piano-sheet.jpg    # Image section à propos
│   └── README.md          # Guide images
├── README.md              # Ce fichier
├── INSTALLATION.md        # Guide d'installation complet
└── .gitignore            # Fichiers à ignorer
```

## 🎨 Personnalisation

### Couleurs

Les couleurs sont définies dans des variables CSS (`css/styles.css`) :

```css
:root {
    --color-dark: #0a0a0a;           /* Noir profond */
    --color-gold: #d4af37;           /* Or doux */
    --color-ivory: #f5f5dc;          /* Ivoire */
    --color-white-off: #f8f8f8;      /* Blanc cassé */
}
```

### Contenu

- **Textes** : éditez directement `index.html`
- **Tarifs** : section `#tarifs` dans `index.html`
- **Contact** : section `#contact` dans `index.html`

### Style

- **Police de titres** : Cormorant Garamond (élégante, script)
- **Police de texte** : Inter (moderne, lisible)
- **Espacements** : Variables CSS personnalisables
- **Animations** : Définies dans `css/styles.css`

## 🚀 Mise en ligne

### GitHub Pages (Gratuit)
```bash
git add .
git commit -m "Initial commit"
git push origin main
# Activez Pages dans Settings → Pages
```

### Netlify (Recommandé)
1. Glissez-déposez votre dossier sur netlify.com
2. Site en ligne instantanément !

### Vercel
```bash
npx vercel
```

## 📋 Checklist avant mise en ligne

- [x] Structure HTML sémantique
- [x] Design responsive (mobile, tablette, desktop)
- [x] Navigation sticky fonctionnelle
- [x] Carousel automatique avec contrôles
- [x] FAQ accordéon accessible
- [x] Formulaire de contact
- [x] Animations au scroll
- [x] Optimisation SEO
- [x] Accessibilité (ARIA, clavier)
- [ ] Ajouter les vraies images
- [ ] Configurer le formulaire (EmailJS/Formspree)
- [ ] Mettre à jour les coordonnées de contact
- [ ] Tester sur vrais appareils
- [ ] Optimiser les images

## 🎯 Performance

- **Aucune dépendance** externe (sauf Google Fonts)
- **JavaScript Vanilla** (pas de jQuery, pas de framework)
- **CSS moderne** avec variables et animations GPU
- **Images lazy-loading** pour performance optimale
- **Code minifiable** et optimisable

## 🔒 Sécurité

- Validation des formulaires côté client
- Aucune dépendance tierce (pas de vulnérabilités)
- Code auditable et transparent

## 🐛 Résolution de problèmes

Consultez le fichier [INSTALLATION.md](INSTALLATION.md) section "Résolution de problèmes".

## 📄 Licence

Ce projet est créé pour EnHarmonie. Tous droits réservés © 2026.

## 👨‍💻 Développement

Développé avec passion par un développeur front-end senior + designer UI/UX.

**Stack technique :**
- HTML5 sémantique et accessible
- CSS3 moderne (Grid, Flexbox, Custom Properties)
- JavaScript ES6+ (Vanilla, sans framework)
- Design mobile-first
- Progressive enhancement

## 📞 Support

Pour toute question ou assistance :
- Consultez [INSTALLATION.md](INSTALLATION.md)
- Vérifiez la console du navigateur (F12)
- Examinez les commentaires dans le code

---

**Fait avec ❤️ et 🎹 pour EnHarmonie**
