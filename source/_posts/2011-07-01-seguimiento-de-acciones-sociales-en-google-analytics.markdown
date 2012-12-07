---
comments: true
date: 2011-07-01 09:30:55
layout: post
slug: seguimiento-de-acciones-sociales-en-google-analytics
title: Seguimiento de acciones sociales en Google Analytics
alias: [6054/seguimiento-de-acciones-sociales-en-google-analytics/, 6054/seguimiento-de-acciones-sociales-en-google-analytics]
alias: [6054/seguimiento-de-acciones-sociales-en-google-analytics/, 6054/seguimiento-de-acciones-sociales-en-google-analytics]
wordpress_id: 6054
categories:
- Analitica
tags:
- google analytics
- social media
---

Google se vuelve social.  No se si eso será bueno o malo pero es la realidad. En Google Analytics en el apartado de Visitantes tenemos "Social" una sección desde la que podremos medir nuestras acciones sociales.

Al igual que pasa con AdWords, **medir el impacto de su botón Google +1 es automático** y las estadísticas quedarán registradas sin necesidad de configuraciones adicionales.

Para el resto de nuestras acciones sociales **disponemos del método _trackSocial**.

_trackSocial admite cuatro parámetros, dos obligatorios y dos opcionales.  El formato es el siguiente:

`__trackSocial(red_social, acción, destino, origen)_`

Los dos primeros parámetros son obligatorios y los dos siguientes opcionales.  Veamos para que sirven:

**Red social**: El nombre de la red social (Twitter, LinkedIn, Facebook, Tuenti...)

**Acción**: El tipo de acción que estamos midiendo (Me gusta, compartir, tweet...)

**Destino: ** La página a la que dirige nuestra acción.  A donde llegará la gente que pulse en nuestro enlace, botón, etc.  Por defecto Analytics pone automáticamente la dirección de destino.

**Origen: ** La página en la que está situado nuestro enlace, botón, etc.  Analytics pondrá como valor predeterminado el nombre de la página en la que estamos.

**Implementación**

La implementación de _trackSocial en nuestras páginas dependerá mucho de como estemos integrando los links, botones... si usamos herramientas externas como AddThis o si lo tenemos implementado directamente.  Incluso si lo tenemos implementado directamente también influye la forma en la que lo hemos hecho.  Por ejemplo no es lo mismo implementar el botón Me Gusta de Facebook usando un iframe o utilizando su Graph API.

**Resumen**

Como bien recalca siempre [Gemma Muñoz](http://www.sorprendida.es/) tenemos que segmentar, segmentar y segmentar.  Es la clave del éxito para medir con eficacia y obtener datos que nos permitan tomar decisiones eficaces.  Poder realizar un seguimiento personalizado de nuestras acciones sociales nos permitirá conocer mejor su funcionamiento, su eficacia y **su infuencia en nuestra cuenta de resultados**.
