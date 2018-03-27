require 'sequel'

DB = Sequel.connect('sqlite://development')

class Movie < Sequel::Model # gem knows to look for movies table (gem magic)
end