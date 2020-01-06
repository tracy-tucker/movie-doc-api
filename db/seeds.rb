# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create(name: 'Horror')
Movie.create(title: 'Nightmare on Elm Street', year: '1984', rating: 'R', description: 'The monstrous spirit of a slain child murderer seeks revenge by invading the dreams of teenagers whose parents were responsible for his untimely death.', genre_id: 1)

Genre.create(name: 'Sci-Fi')
Movie.create(title: 'Star Wars: The Empire Strikes Back', year: '1980', rating: 'PG', description: 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.', genre_id: 2)

Genre.create(name: 'Action')
Movie.create(title: 'Die Hard', year: '1988', rating: 'R', description: 'An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.', genre_id: 3)

Genre.create(name: 'Comedy')
Movie.create(title: 'Spaceballs', year: '1987', rating: 'PG', description: 'A rogue star pilot and his trusty sidekick must come to the rescue of a Princess and save the galaxy from a ruthless race of beings known as Spaceballs.', genre_id: 4)

Genre.create(name: 'Drama')
Movie.create(title: 'Footloose', year: '1984', rating: 'PG-13', description: 'A city teenager moves to a small town where rock music and dancing have been banned, and his rebellious spirit shakes up the populace.', genre_id: 5)

Genre.create(name: 'Kids')
Movie.create(title: 'The Little Mermaid', year: '1989', rating: 'G', description: 'A mermaid princess makes a Faustian bargain in an attempt to become human and win a prince\'s love.', genre_id: 6)