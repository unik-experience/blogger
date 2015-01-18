# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all # For avoiding duplicate content

Category.create!({name: 'design'}) # Use create! so you'll know if there is any errors
Category.create!({name: 'tech'})
