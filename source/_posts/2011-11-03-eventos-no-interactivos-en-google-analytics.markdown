---
comments: true
date: 2011-11-03 19:57:45
layout: post
slug: eventos-no-interactivos-en-google-analytics
title: Eventos no interactivos en Google Analytics
alias: [6633/eventos-no-interactivos-en-google-analytics/, 6633/eventos-no-interactivos-en-google-analytics]
alias: [6633/eventos-no-interactivos-en-google-analytics/, 6633/eventos-no-interactivos-en-google-analytics]
wordpress_id: 6633
categories:
- Analitica
tags:
- eventos
- google analytics
- trackEvent
---

**[![eventos no interactivos en Google Analytics](http://www.alvareznavarro.es/images/2011/11/bounce-rate-300x199.jpg)](http://www.alvareznavarro.es/wp-content/uploads/2011/11/bounce-rate.jpg)Hasta ahora cuando lanzábamos un evento en Google Analytics contaba como una interacción del usuario en nuestra web y anulaba el rebote.  Es decir aunque el usuario hubiera visto una sola página si había ocurrido algún evento, no existía rebote.  Desde hoy ya podemos decidir nosotros si queremos que un evento sea interactivo o no interactivo.**




## Gestión de eventos en Google Analytics


Google ha añadido un nuevo parámetro al método _trackEvent() que nos permite decidir si queremos que nuestro evento sea interactivo y cancele el rebote o bien no interactivo y no afecte al rebote de esa visita.

El formato del nuevo método _trackEvent queda como sigue:


#### __trackEvent(category, action, opt_label, opt_value, opt_noninteraction)_


Hace poco publiqué un script que añades a tu web y que te permite [saber que enlaces externos pulsan los visitantes de tu web](http://www.alvareznavarro.es/6579/seguimiento-de-enlaces-externos-con-google-analytics/).  Por ejemplo, si tienes un post de un blog y enlazas a otras webs, cuando alguien que está leyendo tu post pulsa en ese enlace quedará contabilizado y podrás saber que enlaces tienen más éxito entre tus lectores.

Un efecto secundario de este script es que aunque el visitante solo vea una página de tu web **cuando se lanzaba el evento Google Analytics lo entendía como una interación del visitante con tu web y cancelaba el rebote**.

Desde ahora ya podemos decidir si queremos que esto sea así o no.  Por defecto, nada cambiará, es decir que si no modificas tus eventos estos seguirán siendo interpretados como una interacción del visitante y cancelarán el rebote.  Pero si añades un nuevo parámetro y pones el valor **_true _**Google Analytics contabilizará el evento y no cancelará el rebote.


## Resumen


No todos los eventos tienen la misma importancia ni afectan por igual al comportamiento de los visitantes en nuestra web.  Desde ahora es responsabilidad del analista web configurar correctamente los eventos para que afecten o no afecten a la tasa de rebote.  Personalmente **creo que existe mucho miedo a tener una tasa de rebote alta**, cuando no siempre es un síntoma malo.  Debemos [analizar cada web en su contexto](http://www.alvareznavarro.es/servicios/consultoria-web/auditoria-y-analisis-web/) y decidir lo más adecuado según sus circunstancias particulares.
