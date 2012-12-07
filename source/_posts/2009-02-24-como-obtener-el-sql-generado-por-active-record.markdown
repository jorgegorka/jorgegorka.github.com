---
comments: false
date: 2009-02-24 18:59:00
layout: post
slug: como-obtener-el-sql-generado-por-active-record
title: Como obtener el sql generado por Active Record
alias: [5613/como-obtener-el-sql-generado-por-active-record/, 5613/como-obtener-el-sql-generado-por-active-record]
alias: [5613/como-obtener-el-sql-generado-por-active-record/, 5613/como-obtener-el-sql-generado-por-active-record]
wordpress_id: 5613
tags:
- active_record
- Internet
- programacion
- rails
- ruby
---

A veces puede ser necesario guardar el contenido de una consulta para poder ejecutarlo mas tarde.




En Rails Active Record no proporciona una forma sencilla de obtener el sql que ha generado. Podemos verlo en el log pero no acceder a el directamente para poder guardarlo.




Por ello y despues de un par de horas de Googleo he creado el siguiente codigo que extiende el objeto Active Record para darme lo que necesito.




module ActiveRecord  

class Base  

class << self  

def view_sql(*args)  

options = args.extract_options!  

validate_find_options(options)  

set_readonly_option!(options)  

construct_finder_sql(options)   

end  

end  

end  

end




Guardad el codigo anterior en un fichero dentro de la carpeta config/initializers (ejemplo: view_sql.rb)




Ahora ya podemos obtener el codigo ejecutando nuestras consultas habituales con el nuevo metodo:




Ejemplos:




Persona.view_sql(6) nos devolvera 'select * from personas where id=6'




Admite todas las opciones de find :condtions, :order, :joins..... etc...
