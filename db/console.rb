require_relative('../models/customer')
require_relative('../models/film')
require_relative('../models/ticket')
# require_relative('')
require('pry-byebug')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new({ 'name' => 'Richard Hendricks', 'funds' => 60 })
customer1.save()
customer2 = Customer.new({ 'name' => 'Erlich Bachman', 'funds' => 50 })
customer2.save()

film1 = Film.new({ 'title' => 'Iron Man', 'price' => 14 })
film1.save()
film2 = Film.new({ 'title' => 'Spiderman', 'price' => 10 })
film2.save()
film3 = Film.new({ 'title' => 'Batman', 'price' => 12 })
film3.save()
film4 = Film.new({ 'title' => 'Superman', 'price' => 13 })
film4.save()

ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film1.id })
ticket1.save()
ticket2 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film2.id })
ticket2.save()
ticket3 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film4.id })
ticket3.save()

binding.pry
nil

