# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Calendar.destroy_all

calendars = [
  { :year => 2014},
  { :year => 2015},
  { :year => 2016},
  { :year => 2017},
  { :year => 2018},
  { :year => 2019},
  { :year => 2020}
]

calendars.each do |cal|
  c = Calendar.new
  c.year = cal[:year]
  c.save
end

puts "There are now #{Calendar.count} years in the database."

