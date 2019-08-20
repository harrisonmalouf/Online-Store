User.destroy_all
puts "Creating Users"
# Make this Admin Later
u1 = User.create :email => 'ajtauber@ga.co', :password => 'chicken'
# Make this Admin Later
u2 = User.create :email => 'harrisonford@ga.co', :password => 'chicken'
u3 = User.create :email => 'joel@ga.co', :password => 'chicken'
u4 = User.create :email => 'bob@ga.co', :password => 'chicken'
u5 = User.create :email => 'steve@ga.co', :password => 'chicken'

puts User.count
Game.destroy_all
puts "Creating Games"
# Platforms PC Xbox Playstation
ga1 = Game.create :name => 'Halo : Combat Evolved', :price => '50.00', :release_date => '2001-11-15', :genre =>'First-person shooter', :image => 'Halo_Combat_Evolved.jpg', :description => 'Halo overwhelmed us when it first arrived... and not just because of the massive Microsoft marketing push. The sci-fi shooter simply excels in so many categories that its hard to know where to begin the praise. There are, of course, the big things. The action is spectacular, constant, and a breeze to master. At the time, Halos control scheme was the most intuitive a console FPS had ever seen. More impressively, the deep and engrossing story feels like an organic part of the gameplay experience, never overshadowing or taking a back seat to the battles. The visuals proved what the Xbox was capable of technically in 2001 and the music proved what it was capable of artistically.', :stock => 43

ga2 = Game.create :name => 'Halo 2', :price => '100.00', :release_date => '2004-11-09', :genre =>'First-person shooter', :image => 'Halo2-cover.png', :description => 'The original Halo may have single-handedly sold the majority of Xbox consoles, but its sequel was the game that truly defined the big black box. The action was improved. New features like dual weapon wielding, vehicle jacking, and access to the all-powerful, all-badass energy sword twist the gameplay in just the right places. The plot was better. The revelation that you got to play as a Covenant soldier takes the story in an unexpectedly complex and morally ambiguous direction. And of course, the graphics were enhanced.', :stock => 22

ga3 = Game.create :name => 'Star Wars: Knights of the Old Republic', :price => '100.00', :release_date => '2003-07-15', :genre =>'Role-playing', :image => 'star-wars-kotor.jpg', :description => 'Set 1,000 years before the Star Wars films, Knights of the Old Republic gives you the chance to explore a galaxy torn between the Republic and the Empire-like Sith. As an amnesiac Jedi with a major secret, you travel from planet to planet, righting wrongs (or wronging them even further), gathering followers, and busting out the crazy Force powers in all-or-nothing lightsaber battles.', :stock => 33

ga4 = Game.create :name => 'Ninja Gaiden', :price => '100.00', :release_date => '2004-03-02', :genre =>'Action-adventure', :image => 'Ninja_Gaiden_(2004_video_game).png', :description => 'One of the most hotly anticipated games in the history of the Xbox, Ninja Gaiden lived up to the lofty expectations that developer Team Ninjas Dead or Alive fighting-and-cheesecake series could never quite match. From the first second you slipped the disc into the Xbox the game was brutally intense, with punishing difficulty; your only option was to get good at it, and fast. The reward was being able to play one of the most engrossing action-adventure games ever.', :stock => 45

ga5 = Game.create :name => 'Psychonauts', :price => '100.00', :release_date => '2005-04-19', :image => 'Psychonautsbox.png', :genre =>'Platorm', :description => 'Psychonauts is clever. Its also laugh-out-loud funny. Talking to a games supporting cast normally consists of button-mashing through conversations as quickly as possible, but shooting the breeze with Psychonauts adorably, impishly quirky bunch of misfits is an absolute joy, thanks to the comic brilliance of the dialogue.', :stock => 52

ga6 = Game.create :name => 'Grand Theft Auto: San Andreas', :price => '100.00', :release_date => '2004-10-26', :image => 'GTASABOX.jpg', :genre =>'	Action-adventure', :description => 'Before it veered off into a more serious direction, Grand Theft Auto was all about over-the-top, ultraviolent, rags-to-riches excess. No game embodied that ideal better than San Andreas. While its not that pretty to look at now (and wasnt back in 2004, really), San Andreas doesnt just offer up a city in which to go nuts - it gives you an entire fictitious state, with three distinct cities and miles of open countryside and small towns in between.', :stock => 32

ga7 = Game.create :name => 'Tom Clancys Splinter Cell: Pandora Tomorrow', :price => '100.00', :release_date => '2004-03-23', :image => 'Pandora_Tomorrow_box_art.jpg', :genre =>'Stealth', :description => 'We saw no shortage of Splinter Cell games on Xbox, but the standout of the group is definitely this second entry. Pandora Tomorrows single-player campaign is yet another masterpiece in stealth and tension, with exotically detailed locales, top-notch celebrity voice acting, and fluidly animated new moves like army spins and upside-down shooting. What really distinguishes Pandora though is its unique and utterly addictive multiplayer.', :stock => 12

ga8 = Game.create :name => 'Project Gotham Racing 2', :price => '100.00', :release_date => '2003-11-18', :image => 'Project_Gotham_Racing_2_Coverart.png', :genre =>'Racing', :description => 'The original Project Gotham Racing hit when the Xbox launched, bringing fantastic control, beautiful representations of real-world cities... and a lot of little problems. PGR2 erases those potholes with one of the most engrossing single-player racing epics seen last generation. As you gradually improve, progress further, and unlock new cars and tracks, you begin to get a feel for the games subtly-tuned racing system and the global cities that make up its tracks.'
ga9 = Game.create :name => 'Panzer Dragoon Orta', :price => '100.00', :release_date => '2003-01-12', :image => 'Panzercover.jpg', :genre =>'Rail shooter', :description => 'Xboxs then-superior power was put to spectacular use in Panzer Dragoon Orta, creating one of the most breathtakingly cinematic shooters ever seen. Even back in the days of the Sega Saturn, Team Andromeda were pushing their hardware further than anyone thought possible, and while Orta may not have been quite as revolutionary, it was still a magnificent spectacle.', :stock => 6

ga10 = Game.create :name => 'The Elder Scrolls III: Morrowind', :price => '100.00', :release_date => '2002-06-06', :image => 'Game-Xbox-ES3Morro-2__46135.1394742947.jpg', :genre =>'Action role-playing', :description => 'Take the go-anywhere, do-anything philosophy of Grand Theft Auto and stick it into a fully realized fantasy world and youve got the best first-person RPG ever made (at least until the next-gen sequels, Oblivion and Skyrim, came along). Will you follow the epic main quest to become a prophesied hero and free the land from demonic oppression? Or will you wander from town to town, stealing wooden spoons and murdering elves for their hats? Its up to you.', :stock => 50

ga11 = Game.create :name => 'Prince of Persia: The Sands of Time', :price => '100.00', :release_date => '2003-10-28', :image => 'Sands_of_time_cover.jpg', :genre =>'Action-adventure', :description => 'Sands of Time is a truly classic adventure that teeters tantalizingly close to perfection. While the ability to "rewind time" is the games party piece, its the Prince who steals the show with his repertoire of athletically impressive moves. Warm, hazy lighting lends an ethereal glow to the brilliantly designed levels, and navigating the Persian hero perfectly from an elaborately plotted A to B is a satisfying thrill.', :stock => 53

ga12 = Game.create :name => 'MechAssault', :price => '100.00', :release_date => '2002-11-22', :image => 'MechAssault_Coverart.png', :genre =>'Shooter', :description => 'Unlike seemingly every other giant-robot game on the market, MechAssault wasnt a slow, methodical, walking-tank-battle that stressed customization and weapon management over fun. It was fast, relatively simple, and packed to the gills with explosive carnage, which made it a perfect candirelease_date to be one of the first - and therefore most important - Xbox Live games. That its still one of the most fun doesnt hurt that standing, either.', :stock => 59

ga13 = Game.create :name => 'Burnout 3: Takedown', :price => '100.00', :release_date => '2004-09-08', :image => 'Burnout_3_-_Takedown_Coverart.jpg', :genre =>'Racing', :description => 'There are three kinds of racing fans: Those who like Gran Turismo, those who like Mario Kart, and those who like Burnout. And for the Burnout crowd, Burnout 3 is the cream of the crop. Criterions racing series places action-packed racing and over-the-top crashes over realism for fantastic results, and Takedown perfected the formula that it tinkered with for the previous two games.', :stock => 33

ga14 = Game.create :name => 'Star Wars Battlefront II', :price => '100.00', :release_date => '2005-10-31', :image => 'StarWarsBattlefront2_PC.jpg', :genre =>'Action', :description => 'Intensity and authenticity: Those two qualities stand out in this first- (and third-) person shooter from a galaxy far, far away. Developer Pandemic expertly rendered battlegrounds near and dear to Star Wars fans, stuffed them full of heavily armed vehicles (which were mostly well-known), then kitted out nicely sized opposing armies complete with a detailed class system so that the various unit classes all feel slightly different', :stock => 74

ga15 = Game.create :name => 'Beyond Good and Evil', :price => '100.00', :release_date => '2003-11-11', :image => 'BGE-cover.jpg', :genre =>'Action-adventure', :description => 'Feeling like some strange combination of The Dark Crystal, X-Files, and Independence Day as directed by Tim Burton, Beyond Good & Evil is a game that refuses to be pigeonholed. Its funny, with cutesy animal characters (one of whom wields fart-fueled jet boots) and chubby, rounded spaceships.'

ga16 = Game.create :name => 'Fable', :price => '100.00', :release_date => '2004-09-14', :image => 'Fablebox.jpg', :genre =>'Role-playing', :description => 'Originally pitched as the ultimate open-ended experience, Fable was released as an unfinished, fairly linear action-RPG and an object lesson in not believing the hype. But somehow we love it anyway; for all its hacky-slashy gameplay and deep flaws, its still a rush to watch your character age, marry the girl and/or guy of his dreams and be loved or feared by mobs of villagers.', :stock => 51


ga17 = Game.create :name => 'Steel Battalion', :price => '100.00', :release_date => '2002-11-21', :image => 'Steel_Battalion_Coverart.png', :genre =>'Action', :description => 'Before plastic guitars and drums were the norm in every living room, Capcoms Steel Battalion asked you to fork over $200 for a gigantic controller sporting two control sticks and 40 buttons. Such was the price for one of the most immersive games of this or any generation. While its admittedly overkill, the added physical controls make the game feel remarkable, helping to replicate the experience of actually controlling a mech.', :stock => 32



ga18 = Game.create :name => 'Spider-Man 2', :price => '100.00', :release_date => '2004-06-28', :image => 'Spider-man.jpg', :genre =>'	Action-adventure', :description => 'Everyone secretly wants to be Spider-Man, but no game really got close to fulfilling those dreams until Spider-Man 2 came along. Although its a (really loose) movie adaptation, it was the first game to throw a superhero into a big, open world and just let you mess around with their powers. And until Batman: Arkham Asylum arrived in 2009, it was arguably the best.', :stock => 23


ga19 = Game.create :name => 'Forza Motorsport', :price => '100.00', :release_date => '2005-05-03', :image => 'Forza_Motorsport_Coverart.png', :genre =>'Racing', :description => 'On its very first try, Forza matched the GT series car for car, track for track, and customization option for customization option. Then it made two immeasurably huge improvements: accurate damage physics and online play. The former was long overdue in a genre that prides itself on realism. The latter gathered lonely, closeted car enthusiasts around the world and united them into an elite and knowledgeable culture club.', :stock => 92


ga20 = Game.create :name => 'Jade Empire', :price => '100.00', :release_date => '2005-04-12', :image => 'Jade_Empire_Coverart.png', :genre =>'Role Playing', :description => 'BioWares first few hits were based on established franchises, with Star Wars and Dungeons & Dragons holding up its fantastic games. Jade Empire was one of the developers first attempts at creating an entire universe of its own, and while the world isnt as involved as Mass Effects would one day be, its still incredibly interesting. Theres little wonder why fans clamor for sequels to this day.', :stock => 46
Genre.destroy_all
puts "Creating Genres"

# Payment
Payment.destroy_all
puts "Creating Payments"

# Orders
Order.destroy_all
puts "Creating Orders"
o1 = Order.create :user_name => 'Gary', :order_name => '', :amount => '1000.00'

# Associations
puts "Associations"
# User and Games
puts "User and Games"
u1.games << ga1
u2.games << ga2

puts "Games and Orders"
o1.games << ga1




# Genres and Games
# ge.games << ga1 << g2 << g3 << g4
# Payment and Games and User
