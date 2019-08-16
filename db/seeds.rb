Users.destroy_all
puts "Creating Users"
# c1 = Customer.create :email => 'ajtauber@ga.co', :password => 'chicken'
u1 = User.create :email => 'ajtauber@ga.co', :password => 'chicken', :address => '123 Burdon Street'

Games.destroy_all
puts "Creating Games"
ga1 = Game.create :name => 'Call of Duty', :price => '100.00'

Genres.destroy_all
puts "Creating Genres"
ge1 = Genre.create :name => 'First Person Shooter', :type => 'Action'
# Add image

Platforms.destroy_all
# Platform.create :type
puts "Creating Platforms"
p1 = Platform.create :name => 'Xbox'
p2 = Platform.create :name => 'Playstation'
p3 = Platform.create :name => 'PC'
p4 = Platform.create :name => 'Wii'
p5 = Platform.create :type => 'Action'
p6 = Platform.create :type => 'Simulations'
p7 = Platform.create :type => 'Strategy'
p8 = Platform.create :type => 'Real-Time Strategy'
p9 = Platform.create :type => 'Role-Playing (RPG)'


# Payment
Payments.destroy_all
puts "Creating Payments"




# Associations
puts "Associations"
# User and Games
u1.games << g1 << p1

# Plaform and Games
p1.games << ga1 << ga2 << g3
ga1.platforms << ga1 << ga2

# Genres and Games

# Payment and Games and User
