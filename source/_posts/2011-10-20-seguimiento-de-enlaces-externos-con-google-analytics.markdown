---
comments: true
date: 2011-10-20 08:05:00
layout: post
slug: seguimiento-de-enlaces-externos-con-google-analytics
title: Seguimiento de enlaces externos con Google Analytics
alias: [6579/seguimiento-de-enlaces-externos-con-google-analytics/, 6579/seguimiento-de-enlaces-externos-con-google-analytics]
wordpress_id: 6579
categories:
- Analitica
tags:
- google analytics
- javascript
---

[![enlaces salientes con google analytics](http://www.alvareznavarro.es/images/2011/10/enlaces-salientes.png)](http://www.alvareznavarro.es/6579/seguimiento-de-enlaces-externos-con-google-analytics/enlaces-salientes/)**Enlazar a nuestras fuentes de datos, contenido adicional, sitios relacionados, etc.. aporta valor a quienes visitan nuestro sitio web.  Aquí tienes un fichero javascript que te permitirá contabilizar automáticamente en Google Analytics cuando alguien pulse un enlace de tu web que lleva a otras webs.**













Para que sirve saber que enlaces externos son los más visitados

Saber que enlaces externos son los más visitados nos permite conocer mejor a nuestros visitantes.  Cuando escribimos un artículo, un post o la descripción de un producto y añadimos enlaces externos, como por ejemplo un vídeo de Youtube, estamos aportando información útil a nuestros visitantes y saber quien pulsa en estos enlaces nos dirá si efectivamente ellos también han encontrado interesante esta información.

Sin embargo, una vez que el visitante ha abandonado nuestro sitio ya no podemos saber que está haciendo.  Esto es un problema, ya que en una instalación básica de Google Analytics no podemos controlar cuales de estos enlaces se pulsan.


## Como efectuar el seguimiento de enlaces externos


Para controlar que enlaces externos son los más visitados voy ha hacer uso de [la gestión de eventos de Google Analytics](http://code.google.com/apis/analytics/docs/tracking/eventTrackerGuide.html).  Podríamos contabilizar estos enlaces como una visita a una página pero creo que esto puede desvirtuar las estadísticas ya que en realidad no son visitas a nuestras páginas sino a páginas externas.  Es decir, cada vez que un visitante pulse en un enlace de nuestra web que lleva a otra web que no es la nuestra quedará contabilizado como un evento.

El formato de gestión de eventos en Google Analytics es el siguiente:

[box type="info"] _trackEvent(category, action, opt_label, opt_value)

En cada evento podemos definir una categoría, una acción una etiqueta y un valor.  Categoría y acción son obligatorios el resto pueden quedar en blanco.  [/box]


##  Instalar el fichero javascript de seguimiento de enlaces


En primer lugar y lo más importante, descargate el [fichero que contabiliza los enlaces externos](http://www.alvareznavarro.es/wp-content/uploads/2011/10/track_external_links1.js).  Es un fichero escrito en javascript que ocupa muy poco espacio.  Vamos a ver ahora como personalizarlo a tu gusto.

Abre el fichero con un editor de textos y verás una serie de líneas como estas:


> 

>     
>     var ga_category = "external"
>     var ga_action   = "link"
>     var ga_value    = "0"  
>     
>     var my_site     = "yoursite.com"
> 
> 



Estas cuatro líneas te permiten personalizar la información que recibas a tu gusto. En la categoría, donde ahora pone "external" tú puedes poner el texto que quieras, por ejemplo "enlaces externos".  Lo mismo en la acción y el campo valor, en caso de que quieras asignar un valor a estos enlaces.

Donde pone my_site tienes que poner el nombre de tu web, para que el programa sepa distinguir que enlaces son externos y cuales no.  Veamos un ejemplo:

Yo pondría lo siguiente: _var my_site = "alvareznavarro.es"_ ya que es el nombre de mi sitio y así, todos los enlaces que no apunten a alvareznavarro.es se contabilizarán como externos.

Una vez configurado a tu gusto no tienes más que subirlo a tu servidor y añadir una línea a todas tus páginas web para que puedan cargar este nuevo fichero.  La línea que tienes que añadir es esta (escríbela antes de la etiqueta </head> de tu web).


> <script type="text/javascript" src="http://www.nombre_de_tu_web.es/track_external_links.js"></script>


Si empleas Wordpress tienes que añadir esta línea desde el menú Aspecto -> Editor y selecciona el fichero Cabecera (header.php) escribe allí esta información y el fichero se cargará automáticamente en todas tus páginas.

[box type="download"] [Seguimiento de enlaces salientes (fichero javascript)](http://www.alvareznavarro.es/wp-content/uploads/2011/10/track_external_links1.js)[/box]


## Resumen


Gracias a la potencia y flexibilidad de Google Analytics podemos modificarlo a nuestro gusto para obtener información de utilidad que con la instalación estándar no podemos controlar.  Instalando este simple fichero podrás controlar todos los enlaces salientes y saber cuales son los que más éxito tienen.

Si tienes dudas o consultas sobre el script te invito a usar los comentarios para preguntar lo que quieras.

[box type="info"] Si necesitas [formación en Google Analytics](http://www.alvareznavarro.es/servicios/consultoria-web/formacion-personalizada-en-google-analytics/) o necesitas una instalación avanzada y a medida de tu empresa puedes [contactar conmigo](http://www.alvareznavarro.es/contactar/).[/box]


### Actualización 25-10-2011


He incluido el host por defecto, como bien apuntaba @trasgu en su comentario, para que  no sea necesario editar el script.  Puedes copiarlo directamente sin tener que modificarlo, a no ser que quieras cambiar los nombres de categoría, acción, etiqueta y valor que vienen por defecto.

También he añadido la detección en función de si estamos empleando la versión síncrona o asíncrona de analytics y ahora funciona en ambos casos.
