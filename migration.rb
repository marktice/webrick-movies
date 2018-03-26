require 'sequel'

DB = Sequel.connect('sqlite://development')

DB.create_table :movies do
  primary_key :id
  String :title
  Integer :year
  String :genre
  String :description
  String :director
  String :actors
end
puts "woo database created"