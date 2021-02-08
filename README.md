
* Algunas consideraciones

    - El sistema se presenta como una primera fase imginando un proyecto de crecimiento incremental. Para el cual el propósito final es generar una red social de notas y cuadernos. Por esto, es que los usuarios pueden subir cuadernos y éstos tienen un atributo de privado o público. Al ser público cualquier usuario puede leer sus notas y por lo tanto descargarlas.

    - Público y Privado : se diferencian por el color de los títulos, cuando es rojo, es privado (solo yo puedo ver mis Composition Books) y cuando es azul, es público

    - Un usuario podrá acceder a su perfil y editar sus datos:
        · Cambiar la contraseña
        · Cambiar el email
        · Cambiar su username
        · Eliminarse del sistema eliminando sus books y notes.

    - Un usuario NO podrá acceder al perfil de otro usuario, cambiando el :id del url.

* Limitaciones

    - Para la creación de un book, el título deberá tener como máximo 20 caracteres

    - Para el registro de un usuario su contraseña deberá tener al menos 6 caracteres, y su email no debe existir.

* Dependencias del sistema

    # Uso de la gema devise para el manejo de session y de cuenta de usuario
    gem 'devise'

    # Uso de la gema 'wicked' para la exportación a pdf de cada nota individual
    gem 'wicked_pdf'


* Creación de BD
    - En el seed se encontrarán 2 usuarios: 
        · Alejandra Pizarnik, que estuvo todo el verano usando la aplicación como diario íntimo.

            Username: ale
            Email: soyalejandra@gmail.com
            Contraseña: soyalejandra

            Sus composition books son todos privados

        · Julio Cortazar que lo usó para dejar indicaciones útiles para la vida.

            Username: Julio
            Email: soycortazar@gmail.com
            Contraseña: soycortazar

            Su composition book es público, Alejandra podrá leerlos y exportarlos


* Sugiero
    1) rake db:drop
    2) rake db:create
    3) rake db:migrate
    4) rake db:seed