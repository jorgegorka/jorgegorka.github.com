---
comments: true
date: 2012-05-01 07:35:43
layout: post
slug: utiliza-el-api-de-google-analytics-de-forma-sencill
title: Utiliza el API de Google Analytics de forma sencilla
alias: [6720/utiliza-el-api-de-google-analytics-de-forma-sencill/, 6720/utiliza-el-api-de-google-analytics-de-forma-sencill]
alias: [6720/utiliza-el-api-de-google-analytics-de-forma-sencill/, 6720/utiliza-el-api-de-google-analytics-de-forma-sencill]
wordpress_id: 6720
categories:
- Analitica
- Desarrollo
tags:
- api
- gems
- google analytics
- ruby
---

![Ariadna Google Analytica API for developers](http://www.alvareznavarro.es/images/2012/04/developers-300x168.jpg)El API de Google Analytics nos permite utilizar directamente toda la información que Google Analytics almacena sobre nuestra página web.  Al tener acceso de forma directa a los datos, podemos cruzarlos, agruparlos y segmentarlos de formas que la herramienta web de Google Analytics no permite.



Cuando tenemos que realizar informes complejos o necesitamos cruzar datos de forma no prevista por la herramienta web de Google Analytics tenemos dos opciones.  Armarnos de paciencia y realizar complejas hojas de cálculo difíciles de actualizar y de mantener libres de errores, o bien realizar un programa que recolecte y procese la información por nosotros y nos la muestre automáticamente.

El [API de Google Analytics](https://developers.google.com/analytics/devguides/) es una herramienta que nos permite recolectar "en bruto" los datos que Google tiene almacenados sobre nuestro sitio para posteriormente poder tratarlos a nuestro gusto.  Pero, como cualquier API, su función es intercambiar información de forma ágil entre ordenadores, no entre humanos.

Para que podamos consumir la información que Google Analytics nos proporciona de forma sencilla y cómoda, he creado una librería que te ayudará a utilizar y sacar todo el partido de dicha API.  El nombre de la librería es [Ariadna](https://rubygems.org/gems/ariadna), está programada en [Ruby](http://www.ruby-lang.org/es/) y puedes utilizarla y/o [descargar el código fuente](https://github.com/jorgegorka/ariadna) y modificarla a tu gusto.

[Ariadna](https://rubygems.org/gems/ariadna) extrae toda la información de Google Analytics y te la presenta en forma de objetos que puedes utilizar.

Ariadna utiliza como [forma de autentificación](https://github.com/jorgegorka/ariadna/wiki/Connexion) Oauth2 que es la forma recomendada por Google para acceder a su API.

Veamos un ejemplo:

    
    results  = profile.results.select(
          :metrics    => [:visits, :bounces, :timeOnSite],
          :dimensions => [:country]
        )
        .where(
          :start_date => Date.today,
          :end_date   => 2.months.ago,
          :browser    => "==Firefox"
        )
        .order([:visits, :bounces])
        .all


Esta consulta pide a Google todas las visitas, tasa de rebote, tiempo en el sitio y país de todas las visitas a nuestra web desde hace dos meses hasta hoy y que hayan empleado el navegador Firefox.  Además nos muestra los resultados ordenados por visitas y tasa de rebote.

Para conocer todos los resultados solo tenemos que iterar sobre el objeto results donde toda la información enviada por Google está disponible en forma de atributos.

    
    results.each do |result|
      puts result.visits
      puts result.bounces
      puts result.timeOnSite
      puts result.country
    end


Además de consultar datos, también podemos conocer toda la información de cuentas, propiedades y perfiles disponibles.

    
    Ariadna::Analytics.new(access_token)



    
    accounts    = analytics.accounts.all



    
    properties = accounts.first.properties.all



    
    profiles    = properties.first.profiles.all


Cualquier duda o comentario sobre la gema es bienvenido y por supuesto [contribuciones y mejoras](https://github.com/jorgegorka/ariadna/wiki/Contributing).
