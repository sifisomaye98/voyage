require 'open-uri'
puts "Destroying all records..."
Journal.destroy_all
Trip.destroy_all
Package.destroy_all
Trip.destroy_all
Info.destroy_all
User.destroy_all
Destination.destroy_all
puts "All existing records deleted."


puts "Seeding Destinations..."
paris    = Destination.create!(name: "Paris",    latitude: 48.8566, longitude: 2.3522)
new_york = Destination.create!(name: "New York", latitude: 40.7128, longitude: -74.0060)
tokyo    = Destination.create!(name: "Tokyo",    latitude: 35.6895, longitude: 139.6917)
london   = Destination.create!(name: "London",   latitude: 51.5074, longitude: -0.1278)
sydney   = Destination.create!(name: "Sydney",   latitude: -33.8688, longitude: 151.2093)

new_york = Destination.create!(name: "New York")
los_angeles = Destination.create!(name: "Los Angeles")
paris = Destination.create!(name: "Paris")
london = Destination.create!(name: "London")
tokyo = Destination.create!(name: "Tokyo")
berlin = Destination.create!(name: "Berlin")
rome = Destination.create!(name: "Rome")
dubai = Destination.create!(name: "Dubai")
sydney = Destination.create!(name: "Sydney")
barcelona = Destination.create!(name: "Barcelona")
amsterdam = Destination.create!(name: "Amsterdam")
istanbul = Destination.create!(name: "Istanbul")
madrid = Destination.create!(name: "Madrid")
san_francisco = Destination.create!(name: "San Francisco")
cairo = Destination.create!(name: "Cairo")
moscow = Destination.create!(name: "Moscow")
bangkok = Destination.create!(name: "Bangkok")
hong_kong = Destination.create!(name: "Hong Kong")
singapore = Destination.create!(name: "Singapore")
rio_de_janeiro = Destination.create!(name: "Rio de Janeiro")
cape_town = Destination.create!(name: "Cape Town")
buenos_aires = Destination.create!(name: "Buenos Aires")
seoul = Destination.create!(name: "Seoul")
mumbai = Destination.create!(name: "Mumbai")
mexico_city = Destination.create!(name: "Mexico City")
toronto = Destination.create!(name: "Toronto")
vancouver = Destination.create!(name: "Vancouver")
chicago = Destination.create!(name: "Chicago")
lagos = Destination.create!(name: "Lagos")
shanghai = Destination.create!(name: "Shanghai")
melbourne = Destination.create!(name: "Melbourne")
lisbon = Destination.create!(name: "Lisbon")
kuala_lumpur = Destination.create!(name: "Kuala Lumpur")
montreal = Destination.create!(name: "Montreal")
athens = Destination.create!(name: "Athens")
vienna = Destination.create!(name: "Vienna")
edinburgh = Destination.create!(name: "Edinburgh")
zurich = Destination.create!(name: "Zurich")
puts "#{Destination.count} Destinations created."

puts "Seeding Infos..."
Info.create!(
  destination: paris,
  visa: "Visa required for some nationalities. Check the embassy website.",
  safety: "Generally safe, but watch out for pickpockets."
)
Info.create!(
  destination: new_york,
  visa: "Visa waiver for some nationalities. Otherwise, check ESTA.",
  safety: "Busy city; be mindful at night."
)
Info.create!(
  destination: tokyo,
  visa: "Visa-free for many countries. Check official Japan immigration site.",
  safety: "Extremely safe, but remain alert in crowds."
)
Info.create!(
  destination: london,
  visa: "Varies by nationality, check official GOV.UK site.",
  safety: "Generally safe, but be aware of petty crime."
)
Info.create!(
  destination: sydney,
  visa: "eVisitor or ETA required for many nationalities.",
  safety: "Safe overall, exercise normal caution."
)
puts "5 Infos created."

puts "Seeding Users..."
user1 = User.create!(email: "me@example.com", password: "password123", name: "User 1")
puts "User 1 created."
user2 = User.create!(email: "me2@example.com", password: "password123", name: "User 2")
puts "User 2 created."
user3 = User.create!(email: "me3@example.com", password: "password123", name: "User 3")
puts "User 3 created."
user4 = User.create!(email: "me4@example.com", password: "password123", name: "User 4")
puts "User 4 created."
user5 = User.create!(email: "me5@example.com", password: "password123", name: "User 5")
puts "User 5 created."

puts "Seeding Trips & Packages..."

# -- Trip 1 with 1 selected package --
trip1 = Trip.create!(
  user: user1,
  destination: paris,
  budget: 3000,
  start_date: Date.today + 10,
  end_date: Date.today + 15,
  category: 1
)
image_url = "https://images.unsplash.com/photo-1541628951107-a9af5346a3e4?q=80&w=1889&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
file = URI.parse(image_url).open
trip1.photos.attach(io: file, filename: "image of #{trip1.destination.name}", content_type: "image/png")
trip1.save!

Package.create!(
  trip_id: trip1.id,
  name: "Paris Getaway",
  description: "Short but sweet trip to the City of Light.",
  selected: true
)
Journal.create!(
  trip_id: trip1.id,
  title: "Paris Journal",
  date: trip1.start_date,
  content: "Excited for croissants and the Eiffel Tower!"
)

# -- Trip 2 with 1 selected package --
trip2 = Trip.create!(
  user: user1,
  destination: new_york,
  budget: 2500,
  start_date: Date.today + 7,
  end_date: Date.today + 12,
  category: 2
)
image_url = "https://images.unsplash.com/photo-1605617697069-959ec9dfc9de?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fG5ldyUyMHlvcmt8ZW58MHx8MHx8fDA%3D"
file = URI.parse(image_url).open
trip2.photos.attach(io: file, filename: "image of #{trip2.destination.name}", content_type: "image/png")
trip2.save!

Package.create!(
  trip_id: trip2.id,
  name: "NYC Adventure",
  description: "Discover Times Square, Central Park, and more.",
  selected: true
)
Journal.create!(
  trip_id: trip2.id,
  title: "NYC Journal",
  date: trip2.start_date,
  content: "Can't wait for the Big Apple!"
)

# -- Trip 3 with 1 selected package --
trip3 = Trip.create!(
  user: user1,
  destination: tokyo,
  budget: 4000,
  start_date: Date.today + 20,
  end_date: Date.today + 27,
  category: 3
)
image_url = "https://images.unsplash.com/photo-1533050487297-09b450131914?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHRva3lvfGVufDB8fDB8fHww"
file = URI.parse(image_url).open
trip3.photos.attach(io: file, filename: "image of #{trip3.destination.name}", content_type: "image/png")
trip3.save!
image_url = "https://plus.unsplash.com/premium_photo-1661964177687-57387c2cbd14?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
file = URI.parse(image_url).open
trip3.photos.attach(io: file, filename: "image of #{trip3.destination.name}", content_type: "image/png")
trip3.save!
image_url = "https://images.unsplash.com/photo-1557409518-691ebcd96038?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
file = URI.parse(image_url).open
trip3.photos.attach(io: file, filename: "image of #{trip3.destination.name}", content_type: "image/png")
trip3.save!
image_url = "https://images.unsplash.com/photo-1522547902298-51566e4fb383?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
file = URI.parse(image_url).open
trip3.photos.attach(io: file, filename: "image of #{trip3.destination.name}", content_type: "image/png")
trip3.save!
image_url = "https://images.unsplash.com/photo-1544885935-98dd03b09034?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
file = URI.parse(image_url).open
trip3.photos.attach(io: file, filename: "image of #{trip3.destination.name}", content_type: "image/png")
trip3.save!

Package.create!(
  trip_id: trip3.id,
  name: "Tokyo Express",
  description: "Experience six unforgettable days in Tokyo—where tradition meets neon-lit excitement! Dive into the city’s buzzing streets, sample fresh sushi at Tsukiji’s famous markets, and wander the serene paths of Meiji Shrine. Shop ‘til you drop in Shibuya and Harajuku, then sip sake in cozy local izakayas. Catch panoramic city views from Tokyo Skytree, step back in time at the Imperial Palace gardens, and ride a boat along the Sumida River. End your adventure with a day trip to the majestic temples of Kamakura or the bright lights of Odaiba. Get ready for sensory overload and heartwarming hospitality in the one and only Tokyo!",
  selected: true
)
Journal.create!(
  trip_id: trip3.id,
  title: "Day 1: Arrival & First Impressions",
  date: trip3.start_date,
  content: "Touched down in Tokyo and immediately felt the city’s electric hum! Checked into a snug, minimalist hotel room, then set out to find some comfort food—ended up devouring ramen so flavorful, I nearly cried tears of joy. Shibuya Crossing at rush hour was absolute pandemonium, but in the best, most exhilarating way possible. I ended the evening watching neon lights dance across the skyline from my window, already feeling like I’ve stepped into the future."
)
Journal.create!(
  trip_id: trip3.id,
  title: "Day 2: Tradition Meets Tech",
  date: trip3.start_date + 1,
  content: "Woke up early to visit the serene Meiji Shrine. The contrast of the quiet forest paths against skyscrapers looming just beyond was mind-blowing. Then, it was on to Harajuku, where vibrant street fashion and quirky shops lured me in. Tried rainbow cotton candy the size of my head (yes, literally), and spent the afternoon marveling at high-tech gadgets in Akihabara. Rounded off the day at a tiny izakaya, savoring perfectly grilled yakitori while chatting with friendly locals."
)
Journal.create!(
  trip_id: trip3.id,
  title: "Day 2: Tradition Meets Tech",
  content: "Started off at the Imperial Palace gardens—so lush and peaceful, with a dash of centuries-old history in every corner. Next, I hopped on the train to the Tokyo Skytree for breathtaking 360° views—my heart was in my throat peering down at the endless cityscape below. As the sun set, I took a leisurely river cruise along the Sumida, floating under twinkling bridges while skyscrapers sparkled on both sides. Pure Tokyo magic!",
  date: trip3.start_date + 2
)

# -- Trip 4 with 1 selected package --
trip4 = Trip.create!(
  user: user1,
  destination: london,
  budget: 3500,
  start_date: Date.today + 30,
  end_date: Date.today + 35,
  category: 4
)
image_url = "https://images.unsplash.com/photo-1488747279002-c8523379faaa?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
file = URI.parse(image_url).open
trip4.photos.attach(io: file, filename: "image of #{trip4.destination.name}", content_type: "image/png")
trip4.save!

Package.create!(
  trip_id: trip4.id,
  name: "London Highlights",
  description: "Explore Buckingham Palace, Big Ben, and more.",
  selected: true
)
Journal.create!(
  trip_id: trip4.id,
  title: "London Journal",
  date: trip4.start_date,
  content: "Cheerio, London!"
)

# -- Trip 5 with 3 packages (all not selected) --
trip5 = Trip.create!(
  user: user1,
  destination: sydney,
  budget: 5000,
  start_date: Date.today + 40,
  end_date: Date.today + 50,
  category: 5
)
Package.create!(
  trip_id: trip5.id,
  name: "Sydney Backpacker",
  description: "Hostel stay and budget-friendly sightseeing.",
  selected: false
)
Package.create!(
  trip_id: trip5.id,
  name: "Sydney Luxury",
  description: "High-end hotels and private tours.",
  selected: false
)
Package.create!(
  trip_id: trip5.id,
  name: "Sydney Adventure",
  description: "Surf lessons and day trips to local attractions.",
  selected: false
)
Journal.create!(
  trip_id: trip5.id,
  title: "Sydney Journal",
  date: trip5.start_date,
  content: "Heading to Australia soon!"
)

puts "5 Trips created (4 with 1 selected package, 1 with 3 non-selected packages)."
puts "Done seeding!"
