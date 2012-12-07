---
comments: false
date: 2008-02-02 13:44:00
layout: post
slug: si-la-montaa-no-viene-a-mahoma
title: Si la montaña no viene a Mahoma
alias: [5509/si-la-montaa-no-viene-a-mahoma/, 5509/si-la-montaa-no-viene-a-mahoma]
alias: [5509/si-la-montaa-no-viene-a-mahoma/, 5509/si-la-montaa-no-viene-a-mahoma]
wordpress_id: 5509
categories:
- Desarrollo
tags:
- firebird
- rails
---

La función rand que incluye Firebird no funciona del todo bien y me devuelve resultados que distan mucho de ser aleatorios por lo que para ordenar los resultados de una consulta no me sirve:


`
select * from tabla order by rand()`


Solución:  dejar que la base de datos haga lo que mejor sabe hacer, devolver registros en el menor tiempo posible y emplear ruby para el orden.


`
  resultados = find(:all, :limit => 10)  

  resultados.sort_by { rand }
`
