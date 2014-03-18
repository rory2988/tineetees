# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ipsum = 'Bacon ipsum dolor sit amet hamburger turkey ham hock ground round ham filet mignon prosciutto flank. Brisket ball tip kevin swine tri-tip salami leberkas andouille pig beef.'
image = 'http://asaltedtee.files.wordpress.com/2012/12/joy-t-shirt-mock-up1.jpg?w=600'

Product.create(name: 'Product 1', description: ipsum, image: image, price: 600, on_hand: 5)
Product.create(name: 'Product 2', description: ipsum, image: image, price: 650, on_hand: 3)
Product.create(name: 'Product 3', description: ipsum, image: image, price: 700, on_hand: 4)
Product.create(name: 'Product 4', description: ipsum, image: image, price: 750, on_hand: 8)
Product.create(name: 'Product 5', description: ipsum, image: image, price: 250, on_hand: 8)
Product.create(name: 'Product 6', description: ipsum, image: image, price: 250, on_hand: 8)