Users.destroy_all
puts "Creating Users"
# c1 = Customer.create :email => 'ajtauber@ga.co', :password => 'chicken'
u1 = User.create :email => 'ajtauber@ga.co', :password => 'chicken', :address => '123 Burdon Street'


Games.destroy_all
puts "Creating Games"
# Platforms PC Xbox Playstation
ga1 = Game.create :name => 'Call of Duty', :price => '100.00'
ga2 = Game.create :name => 'Overwatch', :price => '100.00'
ga3 = Game.create :name => 'Dota 2', :price => '0.00'
ga4 = Game.create :name => 'Counter-Stike: Global Offensive', :price => '100.00'
ga5 = Game.create :name => 'PLAYERUNKNOWN BATTLEGROUNDS', :price => '100.00'
ga6 = Game.create :name => 'Tom Clancys Rainbow Six: Siege', :price => '100.00'
ga7 = Game.create :name => 'Rust', :price => '50.00'
ga8 = Game.create :name => '', :price => '100.00'

Genres.destroy_all
puts "Creating Genres"
ge1 = Genre.create :name => 'First Person Shooter', :type => 'Action'
ge2 = Genre.create :name => ''
# Add image

Platforms.destroy_all
# Platform.create :type
puts "Creating Platforms"
p1 = Platform.create :name => 'Xbox'
p2 = Platform.create :name => 'Playstation'
p3 = Platform.create :name => 'PC'
p4 = Platform.create :name => 'Wii'
p5 = Platform.create :type => 'Switch'
p6 = Platform.create :type => ''
p7 = Platform.create :type => ''
p8 = Platform.create :type => ''
p9 = Platform.create :type => '-Playing (RPG)'


# Payment
Payments.destroy_all
puts "Creating Payments"




# Associations
puts "Associations"
# User and Games
u1.games << g1 << p1 << p2 << p3 << p5


# Plaform and Games
p1.games << ga1 << ga2 << g3
ga1.platforms << ga1 << ga2

# Genres and Games
ge.games << ga1 << g2 << g3 << g4

# Payment and Games and User
