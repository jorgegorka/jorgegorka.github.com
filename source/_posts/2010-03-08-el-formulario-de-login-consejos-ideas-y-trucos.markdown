---
comments: true
date: 2010-03-08 09:07:21
layout: post
slug: el-formulario-de-login-consejos-ideas-y-trucos
title: El formulario de login.   Consejos, ideas y trucos.
alias: [5760/el-formulario-de-login-consejos-ideas-y-trucos/, 5760/el-formulario-de-login-consejos-ideas-y-trucos]
alias: [5760/el-formulario-de-login-consejos-ideas-y-trucos/, 5760/el-formulario-de-login-consejos-ideas-y-trucos]
wordpress_id: 5760
categories:
- usabilidad
tags:
- aplicaciones
- usabilidad
---

Si hemos sido buenos chicos y hemos hecho bien nuestro trabajo, los visitantes de nuestra web se habrán registrado y pasarán a convertirse en usuarios.

En la primera parte de esta serie de artículos ya hablamos de [la importancia de los usuarios](http://jorgegorka.wordpress.com/2010/02/24/los-usuarios-para-el-que-se-los-trabaja-quid-pro-cuo-clarice/).  Hoy vamos a ver como crear un formulario de login adecuado para que nuestros usuarios puedan acceder a nuestra web de la forma más rápida y sencilla posible.

[caption id="attachment_5777" align="aligncenter" width="450" caption="Un formulario correcto pero muy mejorable"][![](http://blog.alvareznavarro.es/images/2010/03/facturagem.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/facturagem.png)[/caption]


### Objetivos


Este debe ser el primer paso a tener claro antes de hacer cualquier pantalla de cualquier aplicación.  Que pretendemos conseguir con ella?.

En nuestro caso los objetivos a conseguir son estos:



	
  * Dar acceso a los usuarios registrados de forma rápida y sencilla.  (Molestar lo menos posible).

	
  * Facilitar información si nuestro usuario no recuerda algún dato (usuario y/o contraseña)

	
  * Ayudar a quienes han confundido el formulario de login con el de alta de usuarios.


Una vez que tenemos claros los objetivos a conseguir ya nos podemos poner manos a la obra.


### Dar acceso a los usuarios registrados de forma rápida y sencilla.   (Molestar lo menos posible).


Existe unanimidad en cuanto a la cantidad de datos necesarios para que un usuario pueda identificarse en una web: Un usuario y una contraseña.

La primera duda surge al pensar en el nombre de usuario.  Personalmente no soy partidario de utilizar un nombre de usuario como dato a solicitar en el formulario de login.

Si el nombre de usuario nos va a permitir identificarnos debe ser único (es decir que no podrá haber dos nombres de usuario iguales) y esto es un poco frustrante si cuando queremos darnos de alta en una web comprobamos que nuestro nombre de usuario ya está seleccionado.   Esto provoca que debamos elegir otro nombre de usuario al que no estamos acostumbrados y la próxima vez que regresemos a este sitio probablemente ya no recordemos cual era.

El dato correcto a solicitar es una dirección de email.  La dirección de email es única, fácil de recordar y nos sirve para prevenir la creación de múltiples cuentas de forma automatizada si obligamos a validar dicha cuenta.

Un problema que puede tener solicitar una dirección de email es que las direcciones de email suelen ser más largas que un nombre de usuario y obligamos al visitante a escribir más y por lo tanto le damos mayor posibilidad de equivocarse.   De todas formas con los navegadores actuales y su función de recordar contraseñas este problema se minimiza bastante.

Sobre la contraseña poco podemos hablar ya que es el el formulario de alta de usuarios donde habremos definido sus características (tamaño mínimo, autogenerada, fortaleza, etc....).

Tumblr nos presenta un formulario también muy agradable y cómodo de  utilizar con la palabra "Welcome Back" lo que ya nos da una idea de que  no estamos registrándonos sino accediendo de nuevo a su web.


[![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/tumblr_login.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/tumblr_login.png)
    Claro, cómodo y fácil de usar


Si olvidamos la contraseña el enlace nos lleva a otro formulario más  sencillo.

[caption id="" align="aligncenter" width="450" caption="El propio botón indica la acción a realizar cuando pulsemos sobre él"][![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/tumblr_forgot.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/tumblr_forgot.png)[/caption]

La disponsición de los títulos de los campos y los propios campos también es importante para que el usuario pueda leer y asociar el título del campo con el contenido que se espera de forma sencilla y moviendo la vista lo menos posible.  Para ello lo correcto es que los títulos de los campos aparezcan encima del propio campo ya que evita que tengamos que mover la vista de izquierda a derecha para asociar un campo con su título y resulta más cómodo de leer.

[caption id="attachment_5773" align="aligncenter" width="429" caption="La vista debe desplazarse en zig-zag"][![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/rentobile2.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/rentobile2.png)[/caption]

Con los títulos encima de los campos es más fácil leer el formulario.

[caption id="attachment_5774" align="aligncenter" width="260" caption="El flujo vertical hace más cómoda la lectura"][![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/twitter.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/twitter.png)[/caption]


### Facilitar información si nuestro usuario no recuerda algún dato (usuario  y/o contraseña)


A todos nos ha ocurrido intentar acceder a un sitio, sobre todo si no los visitamos con frecuencia, y no recordar cual era el usuario y/o la contraseña asignados.  Como a nuestros usuarios también les ocurrirá debemos ponernos en su lugar y ayudarles para que dicho olvido no sea un problema.

Para intentar resolver este problema de la mejor forma posible debemos primero tener en consideración el tipo de información que se maneja en nuestra web.   Si manejamos información sensible (bancos, abogados, médicos, etc...) debemos disponer medidas de seguridad avanzadas que dificulten el acceso a posibles delincuentes.



	
  * El formulario de login **empleará el protocolo https** que utiliza encriptación de las páginas mediante certificados SSL.

	
  * Cuando existan un determinado número de **intentos de login fallidos bloqueará la cuenta.** Entre 3 y 5 es un número de intentos adecuado.

	
  * **Se debería controlar la dirección I.P. desde la que accedemos normalmente** para comprobar si es una dirección I.P. dinámica o fija.  Si la dirección I.P. suele ser la misma y un día cambia, deberemos solicitar información adicional (el dni, un teléfono), avisando al cliente de este hecho.  Si es dinámica podemos controlar los rangos en los que se mueve y alertar si un día el acceso es desde otra ubicación.

	
  * **Los mensajes de error no deben mostrar información que resulte de utilidad a un posible intruso.** Por ejemplo si decimos: Nombre de usuario incorrecto, el atacante ya sabe que dicho usuario no existe y rastreará en busca de otros.  Si el mensaje de error que mostramos indica:  Los datos no son correctos.  Aunque para nosotros como usuarios no son de utilidad ya que no indican si nos hemos equivocado al escribir nuestro usuario o nuestra contraseña, tampoco aportan información a un posible intruso.

	
  * **NUNCA enviar información sensible vía email.** Los emails viajan de forma totalmente insegura por la red y además no debemos acostumbrar a los usuarios al uso del email como forma de recibir información sensible.  Por ejemplo, Amazon nos solicita nuestro email (debemos introducirlo dos veces) y luego escribir los caracteres que aparecen en una imagen antes de enviarnos un email con una dirección desde la que podremos cambiar la contraseña.  Esta dirección solo está activa un tiempo por lo que si alguien solicita el cambio de contraseña de nuestra cuenta introduciendo nuestro email, no recibirá el enlace y nosotros no tenemos más que  ignorarlo y dejar que caduque para no cambiar nada.  Este sistema, que es lo suficientemente seguro para sitios como Amazón no serviría para un banco donde la seguridad debe ser extrema.


[caption id="attachment_5761" align="aligncenter" width="450" caption="Recuperación de contraseña: Amazon"][![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/amazon.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/amazon.png)[/caption]

Si nuestro sitio no maneja datos confidenciales no hace falta tomar tantas precauciones y podremos, si problemas, saltarnos alguna de estas normas y, por ejemplo, enviar la información del usuario por email.

Por lo tanto para una web con seguridad media/baja es muy recomendable añadir al formulario de login un enlace que diga "He olvidado mi contraseña" y en la que al introducir nuestro usuario recibamos en el email un enlace temporal donde poder cambiarla por otra nueva.

Business Catalyist hace un buen trabajo añadiendo un enlace donde no solo nos pregunta si hemos perdido nuestra contraseña, sino que además nos pregunta si necesitamos ayuda y nos conduce a un wiki con documentación (si bien podría facilitarnos las cosas todavía más conduciendonos a la documentación relativa a acceso y seguridad).

[caption id="attachment_5763" align="aligncenter" width="450" caption="Has olvidado tu contraseña? o necesitas ayuda?"][![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/businesscatalyst.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/businesscatalyst.png)[/caption]

Wufoo hace un buen trabajo y el enlace de ayuda nos lleva directamente a la documentación sobre el login.  Sin embargo el botón de cancelar sobra ya que lo único que puede conseguir es que introduzcamos nuestros datos y pulsemos ese botón en lugar de el de login con la consiguiente molestia y cabreo por nuestra parte.  Además parece que no tener una cuenta y crear una nueva son dos procesos distintos, aunque el enlace lleva al mismo sitio, pero visualmente la raya horizontal de separación nos hace dudar sobre donde debemos hacer click.

[caption id="attachment_5764" align="aligncenter" width="450" caption="Botón cancel fuera y mejorar aspecto visual de crear nueva cuenta"][![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/wufoo.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/wufoo.png)[/caption]


### Ayudar a quienes han confundido el formulario de login con el de alta de  usuarios.


El tercer objetivo que nos hemos marcado también es muy importante ya que ayudará tanto a tener más usuarios registrados como a que estos estén cómodos visitando nuestra web.

Es inevitable que o bien por pulsar rápidamente en un enlace o por confusión a la hora de nombrarlos algunas personas que desean crear una cuenta accedan a nuestro formulario de login.   Nuestra misión siempre debe ser la de ayudar y facilitar el uso de nuestra web a los visitantes lo máximo posible.

Tuts+ presenta un formulario visualmente atractivo.  Con indicadores claros, campos de texto grandes y nos indica que si no estamos dados de alta podemos registrarnos.  El problema es que existen tres acciones posibles y las tres se realizan con botones visualmente idénticos.  Esto sin duda generará muchos errores en personas que una vez introducido el usuario y la contraseña pulsen accidentalmente el botón de registrarse o bien el de recuperar contraseña.

[caption id="attachment_5765" align="aligncenter" width="450" caption="Formulario estéticamente impecable pero poco usable"][![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/tuts.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/tuts.png)[/caption]

Si detectamos que el usuario que intenta introducir no existe (y si la seguridad de nuestra web nos lo permite) debemos indicar al visitante si lo que desea realmente es crear una nueva cuenta.

Virb nos indica claramente que estamos ante un formulario de login para inmediatamente indicarnos que si no estamos registrados todavía podemos conocer más, haciendo un tour de su web o bien registrarnos.  Además y como plus de calidad nos permite registrarnos utilizando OpenId que es un sistema de identificación de usuarios centralizado que nos permite acceder a diferentes webs empleando los mismos datos y sobre todo sin necesidad de facilitar las contraseñas a dichas webs.

[caption id="attachment_5769" align="aligncenter" width="450" caption="Virb lo tiene todo y muy bien organizado"][![](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/virb.png)](http://blog.alvareznavarro.es/wp-content/uploads/2010/03/virb.png)[/caption]


### Resumen


Debemos convertir el proceso de login en nuestra web en un mero trámite.  De cara al los usuarios el proceso debe ser sencillo y rápido.  Además tenemos que anticiparnos a sus necesidades y ayudarles si no recuerdan algún dato o bien no es este el sitio donde querían estar.

Enlaces de interés:

[Capturas de pantalla de formularios de login](http://www.flickr.com/photos/factoryjoe/sets/72157600010029792/)

[36 Beautiful Login Page/Form Designs](http://dzineblog.com/2009/03/interface-design-inspiration-36-beautiful-login-pageform-designs.html)

[100  Outstanding Login Forms](http://designreviver.com/inspiration/100-sites-with-outstanding-login-forms/)
