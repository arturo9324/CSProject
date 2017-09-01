# CSProject
Proyecto para CS.
Lenguaje de programación Ruby
Framework Rails
Version de Ruby: 2.2.6

#Funcinalidad
Se debe crear un nuevo usuario para utilizar el sistema (con nombre, email, teléfono, rol, contraseña)
Se puede modificar el perfil del usuario (Todo menos el correo, se debe introducir la contraseña para poder editar el perfil)
Se puede cancelar la cuenta, con lo cual se elimina por completo el usuario
Se pueden listar los usuarios con sus caracteristicas principales (nombre, correo, tipo de usuario, telefono, y fecha-hora de la ultima modificación)


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
#Tambien se puede iniciaizar entrando a la consola de rails
>rails c
>RolUser.create([{name: "Administrador"}, {name: "Analista"}, {name: "Programador"}, {name: "Asistente"}, {name: "Pasante"}])

#Iniciar servidor
>rails s -p puerto(default 3000)

