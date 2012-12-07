---
comments: false
date: 2008-01-26 22:29:00
layout: post
slug: ruby-on-rails-firebird-y-problemas-con-insert
title: ruby on rails firebird y problemas con insert
alias: [5506/ruby-on-rails-firebird-y-problemas-con-insert/, 5506/ruby-on-rails-firebird-y-problemas-con-insert]
alias: [5506/ruby-on-rails-firebird-y-problemas-con-insert/, 5506/ruby-on-rails-firebird-y-problemas-con-insert]
wordpress_id: 5506
categories:
- Desarrollo
tags:
- firebird
- rails
---

He descargado la última versión del firebird-adapter desde gems.rubyonrails.org y cuando voy a insertar un registro me da un error diciendo que "insert is an abstract method".




Trasteando he visto que active-record-firebird-adapter-1.0.0 no tiene definido el método insert y lógicamente al heredar de abstract-record que si lo tiene pues se queja.




Realmente no se si es correcto que esto sea así pero yo lo he añadido de la siguiente forma:




`
def insert(sql, name = nil, pk = nil, id_value = nill, sequence_name = nill)  

 execute sql, name  

end
`





Desde entonces los insert funcionan correctamente.




No estoy seguro al 100% de que esta forma sea la correcta y además me parece muy sospechoso que se hayan olvidado del método insert.. pero lo que es seguro es que haciendo esto todo funciona.




Si alguien tiene una explicación mejor que me la diga.
