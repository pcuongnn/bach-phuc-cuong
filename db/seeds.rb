# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["Giay thuong","Giay trung","Giay cao cap"]
companies = ["Adidas","Nike","Convert"]

categories.each do |t|
	Category.create(name: t)
end

companies.each do |t|
	Company.create(name: t)
end

(1..10).each do |t|
	p = Shoe.new
	p.name = "Shoe #{t}"
	p.price = rand(45..100)
	p.category_id = rand(1..3)
	p.company_id = rand(1..3)
	p.description = "describe #{t}"	
	p.save
end