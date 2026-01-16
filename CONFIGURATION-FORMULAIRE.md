# Configuration du Formulaire de Contact

## 📧 Adresse Email Configurée
`coursdepiano@enharmonieweb.com`

## ✅ Activation de FormSubmit (Important !)

Le formulaire de contact utilise **FormSubmit.co** pour envoyer les messages directement à votre adresse email.

### ⚠️ Étape d'activation OBLIGATOIRE :

**IMPORTANT** : La première fois qu'un visiteur soumet le formulaire, FormSubmit enverra un **email de confirmation** à `coursdepiano@enharmonieweb.com`.

1. **Premier envoi** : Testez le formulaire vous-même sur https://en-harmonie.vercel.app/#contact

2. **Vérification** : 
   - Ouvrez votre boîte mail `coursdepiano@enharmonieweb.com`
   - Cherchez un email de `FormSubmit <noreply@formsubmit.co>`
   - **Cliquez sur le lien de confirmation** dans l'email

3. **Activation terminée** : Une fois confirmé, tous les futurs messages seront automatiquement envoyés à votre adresse email sans autre action requise.

## 🔧 Comment ça fonctionne

Quand un visiteur remplit le formulaire sur votre site :
1. Il entre son nom, email, téléphone, type de cours et message
2. Il clique sur "Envoyer le message"
3. Les données sont envoyées à Formspree
4. Formspree vous transfère le message par email à `coursdepiano@enharmonieweb.com`
5. Le visiteur voit un message de confirmation

## 📋 Informations reçues par email

Vous recevrez un email contenant :
- **Sujet** : "Nouveau message depuis Enharmonie"
- **Nom complet** du visiteur
- **Email** du visiteur (pour répondre directement)
- **Téléphone** du visiteur
- **Type de cours** : Particulier ou Comité d'Entreprise
- **Message** détaillé

## 🆓 FormSubmit - Service Gratuit

FormSubmit.co offre :
- ✅ **Illimité** : Pas de limite de soumissions
- ✅ Pas d'inscription requise
- ✅ Protection anti-spam intégrée
- ✅ 100% gratuit pour toujours
- ✅ Emails formatés en tableau HTML élégant

## 🔒 Sécurité

- Protection anti-spam intégrée
- HTTPS pour toutes les soumissions
- Pas d'exposition de votre email dans le code source
- Validation des données côté client et serveur

## 🚨 En cas de problème

Si le formulaire ne fonctionne pas :
1. **VÉRIFIEZ D'ABORD** : Avez-vous confirmé l'email de FormSubmit ? (étape obligatoire)
2. Vérifiez vos **spams/courrier indésirable** pour l'email de confirmation
3. Testez le formulaire vous-même sur https://en-harmonie.vercel.app/#contact
4. Après confirmation, attendez 1-2 minutes puis testez à nouveau

## 📞 Alternative : Contact Direct

En attendant l'activation ou en cas de problème, les visiteurs peuvent toujours vous contacter directement via :
- 📧 Email : coursdepiano@enharmonieweb.com
- 📱 Téléphone : 07 52 04 22 14

---

**Mis à jour le** : 12 janvier 2026
