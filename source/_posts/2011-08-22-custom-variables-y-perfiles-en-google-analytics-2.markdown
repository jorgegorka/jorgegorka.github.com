---
comments: true
date: 2011-08-22 09:01:00
layout: post
slug: custom-variables-y-perfiles-en-google-analytics-2
title: Custom Variables y perfiles en Google Analytics
alias: [6043/custom-variables-y-perfiles-en-google-analytics-2/, 6043/custom-variables-y-perfiles-en-google-analytics-2]
alias: [6043/custom-variables-y-perfiles-en-google-analytics-2/, 6043/custom-variables-y-perfiles-en-google-analytics-2]
wordpress_id: 6043
categories:
- Analitica
tags:
- custom variables
- google analytics
---

Como todos sabeis el uso de _setVar() ha quedado obsoleto y pronto desaparecerá.  Ahora Google Analytics recomienda el uso de _setCustomVar() que es mucho más potente.  Sin embargo hay un pequeño problema.  A día de hoy no es posible [usar Custom Variables](http://www.alvareznavarro.es/servicios/consultoria-web/implantacion-de-herramientas-de-medicion/) para filtros en perfiles.

Para filtrar datos en función de Custom Variables y/o sus valores deberemos usar segmentos avanzados ya que, de momento, no es posible crear perfiles.  Sin embargo si que es posible crear perfiles y aplicar filtros utilizando _setVar().

Es decir que a pesar de que Google Analytics recomienda no usar _setVar(), si necesitas crear perfiles filtrando por valores propios, por ejemplo, para segmentar por tipo de visitante (no registrado, usuario normal, usuario premium, etc...) solo puedes hacerlo empleando _setVar().

Como opinión personal creo que es mejor evitar en todo lo posible el uso de _setVar() ya que terminará desapareciendo y acostumbrarnos a usar _setCustomVar() que es mucho más versatil y no creo que Google Analytics tarde mucho en añadirlo a los parámetros que pueden emplearse al crear filtros para perfiles.
