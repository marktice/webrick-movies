require 'sequel'
require_relative 'models/movies.rb'

DB = Sequel.connect('sqlite://development')