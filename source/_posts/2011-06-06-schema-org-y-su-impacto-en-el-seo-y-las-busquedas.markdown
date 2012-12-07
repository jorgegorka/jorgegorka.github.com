---
comments: true
date: 2011-06-06 08:15:00
layout: post
slug: schema-org-y-su-impacto-en-el-seo-y-las-busquedas
title: Schema.org y su impacto en el SEO y las búsquedas
alias: [5803/schema-org-y-su-impacto-en-el-seo-y-las-busquedas/, 5803/schema-org-y-su-impacto-en-el-seo-y-las-busquedas]
alias: [5803/schema-org-y-su-impacto-en-el-seo-y-las-busquedas/, 5803/schema-org-y-su-impacto-en-el-seo-y-las-busquedas]
wordpress_id: 5803
categories:
- SEO
---


    

**Que es Schema.org**




Bing, Google y Yahoo han lanzado una iniciativa llamada [Schema.org](http://schema.org/) que tiene como objetivo definir unos estandares de uso de metadatos comunes que sirvan indistintamente para cualquier buscador.




Los metadatos (informacion sobre los datos) son muy necesarios para los buscadores ya que les ayudan a aclarar el contenido de la pagina y a disambiguar posibles problemas de interpretacion.  En determinados contextos es complicado saber si cuando buscamos Jaguar queremos saber sobre el animal o sobre la marca de coches.




Añadiendo esta informacion a nuestras paginas ayudamos al buscador a **indexar mejor nuestro contenido**.  Y no solo eso sino que al hacer mas listo al buscador podremos realizar consultas mas precisas y recibir resultados relevantes.  Por ejemplo, si buscamos hoy en dia_ "vuelos Bilbao Londres_" o incluso _"vuelos Bilbao Londres hastas 100 euros"_ no encontraremos los vuelos directamente en los resultados sino que la mayoria de las veces acabaremos en la pagina de un operador en la que tendremos que volver a realizar la busqueda.




**Como usar los metadatos**




Veamos un ejemplo.  Supongamos que tenemos una tienda online de venta de vinos.  Nos gustaria que el buscador que nos visite al indexar nuestras paginas de producto sepa con claridad de que va nuestro producto, el precio, la marca, etc... para poder devolver resultados mas relevantes a quien consulta.




La sintaxis html de una pagina de producto podria ser mas o menos asi:




<div class="product">




<h1>Vino Tinto Reserva de CondeDuque</h1>




<h2>Cosecha de 2006 - 90% tempranillo 10% mazuelo</h2>




<h3>Bodegas Conde Duque</h3>




<p>Este vino ha sido elaborado y bla bla bla.......</p>




<p>Precio.- 23.99 euros IVA Incluido botella de 75cl.</p>




<p>Articulo en stock</p>




</div>




Si le aplicamos la informacion de metadatos nos quedaria algo asi:




<div class="product" itemscope itemtype="http://schema.org/Product">




<h1 itemprop="name">Vino Tinto Reserva de CondeDuque</h1>




<h2 itemprop="model">Cosecha de 2006 - 90% tempranillo 10% mazuelo</h2>




<h3 itemscope itemtype="http://schema.org/Organization"><span itemprop="name">Bodegas Conde Duque</span></h3>




<p itemprop="description">Este vino ha sido elaborado y bla bla bla.......</p>




<p>Precio.- <span itemprop="price">23.99 euros</span> IVA Incluido botella de 75cl.</p>




<p itemprop="availability">Articulo en stock</p>




</div>




De esta forma le estamos indicando claramente a los navegadores cual es el nombre del producto, la descripcion, el precio, la empresa que lo fabrica, etc...  Estamos **ayudando al buscador a entender mejor la informacion** que proporcionamos en nuestra web.




En la web [Schema.org](http://schema.org/) hay un [listado detallado](http://schema.org/docs/full.html) de todas las especificaciones y la informacion disponible para cada una de ellas.




**El impacto de Schema.org en el SEO**




Si los buscadores tienen informacion detallada y relevante de los productos que se venden o fabrican **podran devolver resultados mas fiables y precisos**.  Si conocen la localizacion de la empresa que las vende podran respondernos a preguntas como _"tienda mas cercana con stock de Whisky Chic Reserva 12 años"_.




Se calcula que el 40% de las busquedas tienen caracter local lo cual es un mercado muy importante del total de busquedas y los metadatos jugaran un papel fundamental en ayudar a los buscadores a devolver resultados certeros.




La relevancia y la calidad de los contenidos seguira siendo fundamental.  En la informacion de metadatos tambien se pueden incluir factores que afectan a la calidad de los contenidos como por ejemplo [las reviews](http://schema.org/Review) o [los rankings](http://schema.org/AggregateRating).




Un factor a tener en cuenta es si al buscar _"vuelo madrid barcelona"_ y recibir una lista de productos que cumplen ese criterio, **podria ordenar los resultados por precio**.  En ese caso una simple centesima de menos en el precio de mi producto podria auparle a las primeras posiciones lo que nos lleva a una interesante reflexion sobre la estrategia a seguir para el posicionamiento.




**Las busquedas sociales**




Cuando hablamos de busquedas sociales todos pensamos en botones de +1, me gusta o en sitios como Facebook. 




Creo que los buscadores, muy inteligentemente, han trasladado el componente social a las propias paginas de las empresas.  Con metadatos como [Event](http://schema.org/Event), [Recipe](http://schema.org/Recipe), [Review](http://schema.org/Review), [AggregateRating](http://schema.org/AggregateRating), [Offer](http://schema.org/Offer) o [AggregateOffer](http://schema.org/AggregateOffer) podemos ofrecer informacion "social" de calidad y que aporta valor a nuestros visitantes.  Ademas los buscadores seran conscientes de ello y podran indexarnos mejor.




Por ejemplo si la web de Apple ha combinando informacion de Event con [Person](http://schema.org/Person) podriamos buscar _"ira Steve Jobs al proximo Webdevelopers Conference"_ o preguntar por cualquier otro asistente/ponente.  No solo eso sino que podriamos saber la puntuacion de sus anteriores ponencias y las opiniones de los usuarios.




**Resumen**




Creo que [Schema.org](http://schema.org/) es una jugada muy inteligente y apropiada no solo para ofrecer resultados de mejor calidad a los usuarios sino para competir con ventaja contra posibles nuevos competidores en el mercado de las busquedas, como podria ser Facebook que por sus caracteristicas ya posee una detallada informacion de eventos, personas, valoraciones y comentarios.




Ademas, a corto plazo, puede ser una estrategia de diferenciacion para quienes implementen desde ya estos metadatos en sus webs.  Sobre todo para las pymes que tienen aqui una ventaja estrategica importante frente a las lentas y pesadas grandes corporaciones.











  
