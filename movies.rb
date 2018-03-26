require 'sequel'

DB = Sequel.connect('sqlite://development')

class Movie < Sequel::Model

end

movies = Movie.all
