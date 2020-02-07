---
title: "Presentation Marp"
date: 2020-02-07T18:42:09+01:00
draft: true
marp: true
theme: uncover
class: invert
paginate: true
footer: 'Marp, une alternative à RevealJS ?'
---

# **Slide #1** 

![bg left:40% 75%](../../static/posts/presentation-marp/avengers-logo-snap.png)
Alors, c'est bien Marp ? 
<!--
Notes de présentation de la première slide
-->

---

# Liste

Une liste : 
- item 1
- item 2
- item 3

<!--
Notes de présentation de la deuxième slide
-->

---

# Code 

Un bout de code : 
```java
String lajava = "lajava"
String lecode = "le code"
```

---

# Formatage du texte

**Gras**

_Italique_

```markdown
**Gras**

_Italique_
```

---

# Images

- Et une image : ![width:100px](../../static/posts/presentation-marp/batman-logo.png)
- Et deux images : ![width:100px](../../static/posts/presentation-marp/superman-logo.png)

---

# Changement de style pour les slides suivantes

<!-- backgroundColor: black -->

```html
<!-- backgroundColor: black -->
```

---

# Seconde slide avec un style différent

Fond noir comme la précédente.

---

# Changement de style pour une seule slide

<!-- _backgroundColor: grey -->

```html
<!-- _backgroundColor: grey -->
```

Le caractère _ devant la directive définit un paramétrage local à la slide.

---

# Retour au style de base

<!-- backgroundColor: default -->

```html
<!-- backgroundColor: default -->
```

---

# Supprimer la pagination d'une page

<!-- _paginate: false -->

```html
<!-- _paginate: false -->
```

---

# Supprimer le footer d'une page

<!-- _footer: '' -->

```html
<!-- _footer: '' -->
```

---

# Une image dans le footer

<!-- _footer: '![width:200px](../../static/posts/presentation-marp/spiderman-logo.png)' -->

```html
<!-- _footer: '![width:80px](https://upload.wikimedia.org/wikipedia/
commons/a/ab/Android_O_Preview_Logo.png)' -->
```

---

# Une image en fond de slide en CSS

<!-- _backgroundImage: "linear-gradient(to bottom, #67b8e3, #0288d1)" -->

---

# Une image en fond d'une slide

![bg](../../static/posts/presentation-marp/material-wallpaper.png)

On dirait de la magie !


