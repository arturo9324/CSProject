# CSProject
Proyecto para CS.
Lenguaje de programación Ruby
Framework Rails

#Version de Ruby: 2.2.6

#Instalación:
>bundle install

Configuración:
#Establecer certificado (Windows) 
https://gist.github.com/fnichol/867550

#Instalar devise: 
>rails generate devise:install
#Instalar rspec: 
>rails generate rspec:install

Base de datos:
>rails db:migrate

#Inicializacion de la base de datos:
>rails db:seed

#Pruebas
>rails db:migrate RAILS_ENV=test
>rspec

#Iniciar servidor
>rails s -p puerto(default 3000)

