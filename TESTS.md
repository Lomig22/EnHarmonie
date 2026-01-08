# 🧪 Guide de Tests - EnHarmonie

Ce document liste tous les tests à effectuer avant la mise en production.

## ✅ Checklist générale

### Structure et contenu
- [x] Structure HTML5 sémantique
- [x] Balises meta pour SEO
- [x] Tous les textes sont présents et corrects
- [x] Les liens fonctionnent (navigation interne)
- [ ] Coordonnées de contact à jour
- [ ] Images réelles remplacent les placeholders

### Design
- [x] Palette de couleurs respectée (noir, or, ivoire)
- [x] Typographie élégante (Cormorant Garamond + Inter)
- [x] Animations subtiles et fluides
- [x] Contrastes suffisants pour la lisibilité

### Fonctionnalités
- [x] Navigation sticky apparaît au scroll
- [x] Smooth scroll vers les sections
- [x] Menu hamburger sur mobile
- [x] Carousel automatique des témoignages
- [x] Contrôles du carousel (prev/next/dots)
- [x] Accordéon FAQ
- [x] Formulaire de contact avec validation
- [ ] Envoi du formulaire configuré

## 📱 Tests de responsivité

### Mobile (320px - 767px)

#### iPhone SE (375x667)
- [ ] Hero section lisible et élégant
- [ ] Logo et subtitle bien dimensionnés
- [ ] CTA button accessible
- [ ] Menu hamburger fonctionne
- [ ] Section À propos : texte et image empilés
- [ ] Cards tarifs en colonne
- [ ] Carousel navigable au swipe
- [ ] FAQ bien espacée
- [ ] Formulaire utilisable
- [ ] Footer lisible

#### iPhone 12/13 (390x844)
- [ ] Tous les éléments ci-dessus
- [ ] Pas de débordement horizontal
- [ ] Espacements cohérents

#### Android (360x640, 412x915)
- [ ] Test sur différentes tailles
- [ ] Performance fluide
- [ ] Touch targets suffisamment grands (44px min)

### Tablette (768px - 1024px)

#### iPad (768x1024)
- [ ] Layout adapté (ni mobile, ni desktop)
- [ ] Grilles en 2 colonnes quand pertinent
- [ ] Navigation complète visible ou burger selon design
- [ ] Images bien proportionnées
- [ ] Espacement harmonieux

#### iPad Pro (1024x1366)
- [ ] Transition vers layout desktop
- [ ] Toutes les fonctionnalités opérationnelles

### Desktop (1025px+)

#### Laptop (1280x720, 1440x900)
- [ ] Layout complet visible
- [ ] Navigation horizontale complète
- [ ] Section À propos côte à côte (texte/image)
- [ ] Grille tarifs en 4 colonnes
- [ ] Carousel avec boutons prev/next
- [ ] Contact en 2 colonnes (info/form)
- [ ] Footer en 4 colonnes

#### Desktop (1920x1080)
- [ ] Contenu centré et bien espacé
- [ ] Images en haute résolution
- [ ] Aucun étirement bizarre
- [ ] Hover effects fonctionnels

#### Ultra-wide (2560x1440+)
- [ ] Container max-width respecté
- [ ] Contenu ne s'étire pas trop
- [ ] Lisibilité maintenue

## 🎯 Tests d'accessibilité

### Navigation au clavier
- [ ] Tab : navigation dans l'ordre logique
- [ ] Enter/Space : activation des boutons et liens
- [ ] Escape : fermeture du menu mobile
- [ ] Arrow Left/Right : navigation dans le carousel
- [ ] Focus visible sur tous les éléments interactifs

### Lecteurs d'écran
- [ ] Balises sémantiques (header, nav, section, footer)
- [ ] ARIA labels sur les boutons d'action
- [ ] Alt text sur toutes les images
- [ ] aria-expanded sur les accordéons FAQ
- [ ] aria-label sur les contrôles du carousel
- [ ] Liens explicites (pas de "cliquez ici")

### Contrastes
- [ ] Texte blanc sur fond noir : ratio > 7:1 ✓
- [ ] Texte or sur fond noir : ratio > 4.5:1 ✓
- [ ] Boutons avec bordures visibles
- [ ] Focus indicators bien visibles

### Taille des textes
- [ ] Police minimale 16px
- [ ] Titres hiérarchisés (h1 > h2 > h3)
- [ ] Line-height suffisant (1.6 minimum)
- [ ] Texte zoomable jusqu'à 200% sans casse

## ⚡ Tests de performance

### Chargement
- [ ] Page charge en < 3 secondes (4G)
- [ ] Images optimisées (< 500kb chacune)
- [ ] CSS et JS minifiés pour la production
- [ ] Pas de ressources bloquantes

### Fluidité
- [ ] Scroll fluide à 60fps
- [ ] Animations ne saccadent pas
- [ ] Pas de layout shift pendant le chargement
- [ ] Interactions réactives (< 100ms)

### Optimisations
- [ ] Lazy loading des images
- [ ] CSS critique inline (optionnel)
- [ ] Fonts préchargées
- [ ] Service Worker (optionnel, PWA)

## 🌐 Tests navigateurs

### Navigateurs modernes (dernière version)
- [ ] Chrome / Chromium
- [ ] Firefox
- [ ] Safari (macOS / iOS)
- [ ] Edge
- [ ] Opera

### Tests spécifiques
- [ ] Animations CSS fonctionnent partout
- [ ] Flexbox et Grid bien supportés
- [ ] Variables CSS appliquées
- [ ] Smooth scroll fonctionne

### Fallbacks
- [ ] Vérifier sur IE11 si nécessaire (dégradation gracieuse)
- [ ] Prefixes CSS si besoin (-webkit-, etc.)

## 🔒 Tests de sécurité

### Formulaire
- [ ] Validation côté client
- [ ] Protection XSS (si backend)
- [ ] Sanitization des inputs (si backend)
- [ ] HTTPS en production
- [ ] Pas de données sensibles en localStorage

### Données personnelles
- [ ] Mention RGPD si collecte de données
- [ ] Politique de confidentialité
- [ ] Consentement cookies si analytics

## 🧪 Tests fonctionnels détaillés

### Hero Section
1. [ ] L'image de fond se charge correctement
2. [ ] L'overlay sombre est bien appliqué
3. [ ] Le logo "EnHarmonie" est bien stylisé
4. [ ] Le subtitle est lisible
5. [ ] Le bouton CTA est cliquable et scroll vers #contact
6. [ ] L'indicateur de scroll anime correctement

### Navigation
1. [ ] La nav apparaît après 100px de scroll
2. [ ] Le menu mobile toggle fonctionne
3. [ ] Les liens naviguent vers les bonnes sections
4. [ ] L'active state se met à jour au scroll
5. [ ] Le clic sur un lien ferme le menu mobile

### Section À propos
1. [ ] Le texte est bien formaté
2. [ ] La liste du programme est stylisée (♪)
3. [ ] La highlight box se distingue visuellement
4. [ ] L'image se charge et est bien cadrée
5. [ ] Effet hover sur l'image fonctionne
6. [ ] Layout responsive (colonne sur mobile)

### Section Tarifs
1. [ ] Les 4 cartes sont bien alignées
2. [ ] La carte "Populaire" est mise en avant
3. [ ] Le hover effect fonctionne
4. [ ] Les prix sont clairs et lisibles
5. [ ] Les boutons CTA naviguent vers #contact
6. [ ] Layout responsive (colonne sur mobile)

### Section Témoignages (Carousel)
1. [ ] Le carousel démarre automatiquement
2. [ ] Défilement toutes les 5 secondes
3. [ ] Bouton "Précédent" fonctionne
4. [ ] Bouton "Suivant" fonctionne
5. [ ] Les dots indiquent le slide actif
6. [ ] Clic sur un dot navigue vers le bon slide
7. [ ] Le swipe fonctionne sur mobile/tablette
8. [ ] Le carousel se met en pause au survol (desktop)
9. [ ] Navigation au clavier (arrow keys)
10. [ ] Le carousel boucle correctement (dernier → premier)

### Section FAQ
1. [ ] Les questions sont bien listées
2. [ ] Clic sur une question l'ouvre
3. [ ] Clic sur une question ouverte la ferme
4. [ ] Une seule question ouverte à la fois
5. [ ] L'icône "+" se transforme en "×"
6. [ ] L'animation d'ouverture est fluide
7. [ ] aria-expanded est mis à jour

### Section Contact
1. [ ] Les informations de contact sont affichées
2. [ ] Les liens email/tel fonctionnent
3. [ ] Le formulaire a tous ses champs
4. [ ] Les labels sont associés aux inputs
5. [ ] Validation en temps réel (email)
6. [ ] Le téléphone n'accepte que les chiffres
7. [ ] La soumission affiche un message
8. [ ] Le formulaire se réinitialise après soumission
9. [ ] Les champs requis sont marqués
10. [ ] Les erreurs sont visuellement indiquées

### Footer
1. [ ] Le logo est affiché
2. [ ] Tous les liens sont présents
3. [ ] Les liens fonctionnent
4. [ ] Le copyright est à jour (2026)
5. [ ] Layout responsive (colonne sur mobile)

## 📊 Outils de test

### Validation
- [W3C HTML Validator](https://validator.w3.org/) - Valider le HTML
- [W3C CSS Validator](https://jigsaw.w3.org/css-validator/) - Valider le CSS
- [JSHint](https://jshint.com/) - Valider le JavaScript

### Accessibilité
- [WAVE](https://wave.webaim.org/) - Analyse d'accessibilité
- [axe DevTools](https://www.deque.com/axe/devtools/) - Extension navigateur
- [Lighthouse](https://developers.google.com/web/tools/lighthouse) - Audit complet

### Performance
- [PageSpeed Insights](https://pagespeed.web.dev/) - Performance Google
- [GTmetrix](https://gtmetrix.com/) - Analyse détaillée
- Chrome DevTools → Network/Performance

### Responsive
- Chrome DevTools → Device Toolbar (Cmd+Shift+M)
- [Responsive Design Checker](https://responsivedesignchecker.com/)
- [BrowserStack](https://www.browserstack.com/) - Tests multi-devices

### SEO
- [Google Search Console](https://search.google.com/search-console)
- [Meta Tags](https://metatags.io/) - Preview des meta tags

## 🎯 Scores cibles

### Lighthouse
- **Performance** : > 90
- **Accessibility** : > 95
- **Best Practices** : > 90
- **SEO** : > 90

### Web Vitals
- **LCP** (Largest Contentful Paint) : < 2.5s
- **FID** (First Input Delay) : < 100ms
- **CLS** (Cumulative Layout Shift) : < 0.1

## 📝 Notes de test

Utilisez cet espace pour noter les bugs trouvés :

```
Date : ___/___/___
Testeur : ___________
Navigateur : ___________
Device : ___________

Bugs trouvés :
1. 
2. 
3. 

Points d'amélioration :
1. 
2. 
3. 
```

## ✨ Checklist finale avant mise en ligne

- [ ] Tous les tests ci-dessus passés
- [ ] Images réelles optimisées et en place
- [ ] Coordonnées de contact à jour
- [ ] Formulaire configuré et fonctionnel
- [ ] Mentions légales complétées
- [ ] Politique de confidentialité ajoutée
- [ ] Analytics configuré (Google Analytics, Plausible, etc.)
- [ ] Favicon ajouté
- [ ] Meta tags Open Graph pour les réseaux sociaux
- [ ] Certificat SSL activé (HTTPS)
- [ ] Backup effectué
- [ ] Documentation à jour

---

**Bonne chance pour vos tests ! 🎹✨**

