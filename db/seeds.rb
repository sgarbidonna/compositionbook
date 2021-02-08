# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'ale', email:'soyalejandra@gmail.com', password:'soyalejandra')

Book.create(title: 'Enero', private: true, user_id: User.find(1).id)
Book.create(title: 'Febrero', private: true, user_id: User.find(1).id)

Note.create(title: '1 de enero', body:'Que este año me sea dado vivir en mi y no fantasear ni ser otras, que me sea dado
    ponerme buena y no buscar lo imposible sino la magia y extrañeza de este mundo que
    habito. Que me sean dados los deseos de vivir y conocer el mundo. Que me sea dado el
    interesarme por este mundo. ', book_id: Book.find(1).id)
Note.create(title: '6 de enero', body:'He soñado que vivia a principios del siglo. Me extraño mi «conocimiento» de ciertas
    costumbres.', book_id: Book.find(1).id)
Note.create(title: '17 de enero', body:'Historia de una confabulacion de sombras para expulsar de la noche a la pequeña
    sonambula. ', book_id: Book.find(1).id)
Note.create(title: '24 de enero', body:'Quisiera —con Rimbaud— comer piedras.', book_id: Book.find(1).id)

Note.create(title: '1 de febrero', body:'La poesia no es artesania ni nada tiene que ver con ella. Pero para trascender el
    lenguaje debo antes hacerlo mio.', book_id: Book.find(2).id)
Note.create(title: '15 de febrero', body:'La noche escupe campanas. Un recuerdo con alas se viste de tren.', book_id: Book.find(2).id)
Note.create(title: '19 de febrero', body:'Ayer comí con el Dr. F. Luego fuimos a un cabaret de [palabra ilegible]. Yo estaba
    ebria y veía doble.', book_id: Book.find(2).id)
Note.create(title: '22 de febrero', body:'Es como si te hubieran invitado. Te mandaron llamar. Naciste. ', book_id: Book.find(2).id)


User.create(username: 'Julio', email:'soycortazar@gmail.com', password:'soycortazar')
Book.create(title: 'Instrucciones', private: false,  user_id: User.find(2).id)

Note.create(title: 'Para llorar', body:'Dejando de lado los motivos, atengamonos a la manera correcta de llorar, entendiendo por esto un llanto que no ingrese en el escandalo, ni que insulte a la sonrisa con su paralela y torpe semejanza... Continuara', book_id: Book.find(3).id)
Note.create(title: 'Para cantar', body:'Empiece por romper los espejos de su casa, deje caer los brazos, mire vagamente la pared, olvídese. Cante una sola nota, escuche por dentro... Continuara', book_id: Book.find(3).id)



Book.create(title: 'Marzo', private: true,user_id: User.find(1).id)
Book.create(title: 'Abril', private: true,  user_id: User.find(1).id)
Book.create(title: 'Mayo', private: true, user_id: User.find(1).id)
Book.create(title: 'Junio', private: true,user_id: User.find(1).id)
Book.create(title: 'Julio', private: true,user_id: User.find(1).id)
Book.create(title: 'Agosto', private: true,user_id: User.find(1).id)
Book.create(title: 'Septiembre', private: true,user_id: User.find(1).id)
Book.create(title: 'Octubre', private: true,  user_id: User.find(1).id)
Book.create(title: 'Noviembre', private: true, user_id: User.find(1).id)
Book.create(title: 'Diciembre', private: true,user_id: User.find(1).id)