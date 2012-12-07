---
comments: true
date: 2011-01-17 08:41:00
layout: post
slug: html-5-elementos-obsoletos
title: HTML 5 - Elementos obsoletos
wordpress_id: 5829
tags:
- Uncategorized
---


    

Inicio hoy una serie de posts sobre HTML5 tomando como base [la charla ](http://www.slideshare.net/jorgegorka/presentacin-en-aspgems-html5)que di en [Aspgems](http://aspgems.com/) el dia 12/1/11 y en los que intentare profundizar en los principales aspectos de la especificacion HTML 5.










Al ser [una especificacion](http://dev.w3.org/html5/spec/Overview.html) que esta siendo debatida, modificada y actualizada inevitablemente algunas de las cosas que en estos posts se mencionen acabaran siendo incorrectas y/o incompletas.  Intentare mantener los posts actualizados y te invito a utilizar los comentarios para indicarme cualquier cambio o mejora.







Presentacion y contenido




  



HTML 5 hace especial hincapie en separar presentacion y contenido.  Para ello convierte en obsoletos muchos elementos y atributos que todavia encontramos frecuentemente en gran parte de las paginas web.  La gran mayoria de editores web wysiwyg hacen uso y abuso de estos elementos.




  
Separar presentacion y contenido es una norma basica y un indicador de la calidad de una pagina web.  Aquellas webs que lo mezclan presentan 3 problemas fundamentales:







**Mala accesibilidad**







Cuando hablamos de accesibilidad tendemos a pensar que esto solo afecta a los usuarios con alguna discapacidad fisica sin darnos cuenta de que todos nos convertimos en discapacitados muchas veces a lo largo del dia.  Navegar sin volumen porque estamos en una sala compartida, navegar utilizando mal el puntero porque vamos en el metro o andando por la calle, tipos de letra ilegibles en un smartphone, webs en flash que no se ven en los ipad, iphone, etc....




  
**Mayor coste de mantenimiento**




  
Las webs que mezclan el contenido y la presentacion son mas caras de crear y de mantener.  Si queremos cambiar el color de un texto, el tamaño de letra de un menu, etc... debemos repasar y modificar todas las paginas del sitio web mientras que hacer lo mismo en una web bien hecha requiere modificar un unico fichero CSS.




**Mayor tamaño de pagina**




  
Al incluir la presentacion en el contenido nos vemos obligados a escribir codigo redundante que detalle la apariencia de los elementos en cada una de las paginas donde aparecen.




La gran mayoria de elementos empleados para la presentacion se han eliminado de HTML 5, excepto el elemento style y el atributo style.  Otros han cambiado su significado y ya no denotan la apariencia sino que definen el tipo de contenido que incluyen.  Estos son los elementos obsoletos:




Listado de elementos obsoletos







**basefont, big, center, font, s, strike, tt, u, frame, frameset, noframes, acronym, applet, dir, align, link, vlink, alink, **




**bgcolor, height, width, scrolling, valign, hspace, vspace, cellpadding, cellspacing, border, target, longdesc**







Elementos que cambian su significado







**small**







Desde ahora el elemento small se debe emplear para hacer referencia a condiciones legales, informaciones de copyright, exenciones de responsabilidad, etc..  Normalmente en España denominamos a eso como "letra pequeña" por lo que resultara muy sencillo para nosotros aplicarlo de forma correcta.







Ejemplo:







<small>(c) 2011 Nuestra empresa.  Nuestra empresa no se hace responsable de los comentarios realizados en nuestro blog.  Siendo estos, responsabilidad de quien lo realiza</small>







**b**







El elemento b se empleara cuando deseemos resaltar algun aspecto de un parrafo pero sin otorgarle importancia semantica al elemento resaltado.  La norma indica que b debe usarse como ultimo recurso y emplear los encabezados (h1..h6), el elemento em, strong o mark en funcion del tipo de contenido a resaltar.







**i**







Emplearemos i cuando queramos indicar algun aspecto diferenciador en el parrafo actual.  Por ejemplo: un nombre propio, una frase en otro idioma, una idea, un pensamiento.  Al igual que b debe ser usado en ultimo recurso cuando otros elementos como em o como dfn, por ejemplo, no encajen.







**s**







El elemento s indicara contenidos en un parrafo que ya no son relevantes y/o fiables.







Por ejemplo:







<p>Visitanos</p>




<p><s>Direccion antigua: Avda. de las Acacias, 22</s></p>




<p><strong>Nueva direccion:  Avda. de las Acacias, 666</strong></p>







**style**







Tanto el elemento style como el atributo style permanecen en la especificacion.  Si bien se desaconseja su uso y se recomienda utilizar las hojas de estilo siempre que sea posible, pueden existir situaciones especificas donde esto no sea posible o recomendable.  Es en estas situaciones excepcionales donde podremos aplicar estilos a los elementos utilizando su atributo style.







Dos elementos que me han sorprendido que desaparezcan son **target y longdesc**.







El primero, porque la unica alternativa que se propone para abrir contenido en nuevas ventanas es mediante javascript y el segundo ya que era muy empleado y util para mejorar la accesibilidad de las webs.  Seguramente en breve veremos cambios en la especificacion que propongan alternativas a ambos elementos.







Resumen







HTML 5 define unas bases muy acertadas para la creacion y desarrollo de webs, obligando a separar el contenido de la presentacion.  Esta forma de trabajo nos llevara a ser desarrolladores web mas eficientes y a crear paginas de mayor calidad y a menor coste.







El uso de elementos que HTML 5 define como obsoletos es un sintoma de que nuestro proceso de desarrollo debe mejorar.  Incluso con el soporte incompleto de HTML 5 por parte de los navegadores actuales, la mayoria de elementos marcados como obsoletos son facilmente reemplazables por estilos incluidos en hojas CSS y por elementos que aportan un mayor valor semantico a nuestras webs.







En un proximo post hablaremos de semantica y veremos las nuevas etiquetas y elementos definidos por la especificacion.











  
