require 'sequel'

DB = Sequel.connect('sqlite://development')

movies_table = DB[:movies]

movies = [
  {
    title: 'Avengers: Infinity War',
    year: 2018,
    genre: 'Action, Adventure, Fantasy',
    description: 'The avengers and their allies must be willing to sacrifice all in an attempt to save the world',
    director: 'Anthony Russo, Joe Russo',
    actors: 'Karen Gillan, Letitia Wright, Chadwick Boseman',
  },
  {
    title: 'Tomb Raider',
    year: 2018,
    genre: 'Action, Adventure',
    description: 'Lara Croft, the fiercely independent daughter of a missing adventurer, must push herself beyond her limits when she finds herself on the island where her father disappeared.',
    director: 'Roar Uthaug',
    actors: 'Alicia Vikander, Dominic West, Walton Goggins',
  },
  {
    title: 'Black Panther',
    year: 2018,
    genre: 'Action, Adventure, Sci-Fi',
    description: 'T\'Challa, the King of Wakanda, rises to the throne in the isolated, technologically advanced African nation, but his claim is challenged by a vengeful outsider who was a childhood victim of T\'Challa\'s father\'s mistake.',
    director: 'Ryan Coogler',
    actors: 'Chadwick Boseman, Michael B. Jordan, Lupita Nyong\'o',
  },
  {
    title: 'Annihilation',
    year: 2018,
    genre: 'Adventure, Drama, Fantasy',
    description: 'A biologist signs up for a dangerous, secret expedition into a mysterious zone where the laws of nature don\'t apply.',
    director: 'Alex Garland',
    actors: 'Natalie Portman, Jennifer Jason Leigh, Tessa Thompson',
  },
  {
    title: 'Pacific Rim: Uprising',
    year: 2018,
    genre: 'Adventure, Drama, Fantasy',
    description: 'Jake Pentecost, son of Stacker Pentecost, reunites with Mako Mori to lead a new generation of Jaeger pilots, including rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.',
    director: 'Steven S. DeKnight',
    actors: 'John Boyega, Scott Eastwood, Cailee Spaeny',
  }
]

puts movies_table.multi_insert(movies)