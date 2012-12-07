---
comments: false
date: 2006-11-22 10:09:00
layout: post
slug: hablemos-de-base-de-datos-y-de-ndices
title: Hablemos de base de datos y de índices
alias: [131/hablemos-de-base-de-datos-y-de-ndices/, 131/hablemos-de-base-de-datos-y-de-ndices]
alias: [131/hablemos-de-base-de-datos-y-de-ndices/, 131/hablemos-de-base-de-datos-y-de-ndices]
wordpress_id: 131
categories:
- Desarrollo
- Empresa
tags:
- bbdd
- rails
---

Unos enlaces interesantes sobre optimización de bases de datos e índices.





Un artículo de Jamis Buck sobre [mejorar el rendimiento de tu base de datos](http://weblog.jamisbuck.org/2006/10/23/indexing-for-db-performance).  
Para añadir un índice a una tabla desde una migración:   

`add_index table, [field1, field2], :name => index_name, :unique => true`






Otro, también de Jamis, sobre el funcionamiento de [ActiveRecord#find](http://weblog.jamisbuck.org/2006/11/20/under-the-hood-activerecord-base-find-part-2).






Un plugin muy útil [query analyzer](http://www.agilewebdevelopment.com/plugins/query_analyzer).

